//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Unmesh Gundecha on 9/24/21.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List{
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                                    .foregroundColor(.accentColor)
                                    .accessibilityLabel(Text("Start meeting"))
                HStack {
                                    Label("Length", systemImage: "clock")
                                        .accessibilityLabel(Text("Meeting length"))
                            Spacer()
                                       Text("\(scrum.lengthInMinutes) minutes")

                                }
                HStack {
                                    Label("Color", systemImage: "paintpalette")
                    Spacer()
                                       Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(scrum.color)

                                }
                .accessibilityElement(children: .ignore)
            }
        }
        .listStyle(InsetGroupedListStyle())
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.data[0])
        }
    }
}
