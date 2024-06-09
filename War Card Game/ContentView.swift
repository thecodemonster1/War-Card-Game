//
//  ContentView.swift
//  War Card Game
//
//  Created by Mohamed Amhar on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
//                var i = 0
////                Image("button")
//                Button("Deal"){
//                    deal()
////                    i = i + 1
////                    print("Button is clicked",i,"times")
//                }
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(.bottom)
                .foregroundColor(Color.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        // rendomize the player card
        let playerCardValue = Int.random(in: 2...14) // actually range is 2 - 13 (not include 14)
        let cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // rendomize the cpu card
        cpuCard = "card" + String(cpuCardValue)
        
        // update the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }else{
            print("Tie")
        }
    }
}

#Preview {
    ContentView()
}
