//
//  ContentView.swift
//  aboutMe
//
//  Created by Vicheda Narith on 13/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nameIntro = "Vicheda Narith"
    @State private var funFactPrompt = "Click the button to view a fun fact!"
    @State private var funFact1 = "I like carrots."
    @State private var funFact2 = "I like turtle."
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.purple, .blue],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                Image("profile")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Text(nameIntro)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text(funFactPrompt)
                    .font(.headline)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                Button("click") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    funFactPrompt = funFact1
                }
                .padding()
                .font(.title2)
                .fontWeight(.bold)
                .tint(.blue)
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .background(Rectangle() .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius:15)
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
