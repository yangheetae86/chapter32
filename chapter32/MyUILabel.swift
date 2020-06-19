//
//  MyUILabel.swift
//  chapter32
//
//  Created by grinbi on 2020/06/19.
//  Copyright © 2020 yht. All rights reserved.
//
// UIView 기반의 컴포넌트를 SwiftUI 뷰 선언부에 쉽게 통합하기 위하여 스위프트 유아이는 UIViewRepresentable 프로토콜을 제공한다. UIView 컴포넌트를 스위프트유아이에 통합하려면 해당 컴포넌트는 이 프로토콜을 구현하는 구조체로 래핑되어야 한다. UIViewRepresentable 프로토콜을 따르는 래퍼 구조체는 최소한 다음의 메서드들을 구현해야 한다.
// makeUIView() - 이 메서드는 UIView 기반 컴포넌트의 인스턴스를 생성하고 필요한 초기화 작업을 수행한 뒤 반환하는 역할을 한다.
// updateView() - UIView 자체를 업데이트해야 하는 변경이 SwiftUI 뷰에서 생길 때 마다 호출된다.
import SwiftUI

struct MyUILabel: UIViewRepresentable {
    
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MyUILabel>) -> UILabel {
        
        let myLabel = UILabel()
        myLabel.text = text
        return myLabel
    }
    
    func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<MyUILabel>) {
        //필요한 업데이트 작업을 수행한다
    }
    
    static func dismantleUIView(_ uiView: UILabel, coordinator: ()) {
        <#code#>
    }
}

struct MyUILabel_Previews: PreviewProvider {
    static var previews: some View {
        MyUILabel(text: "hi")
    }
}
