//
//  ViewController.swift
//  calculator
//
//  Created by Yongduek Seo on 2015. 4. 1..
//  Copyright (c) 2015년 Yongduek Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // property, Ctrl-drag-n-drop
    @IBOutlet weak var display: UILabel!
    //              var  varable_name: type
    
    var userisinthemiddleoftyping: Bool = false;
    // Alt-click gives you a help doc.
    
    @IBAction func btnAppendDigit(sender: UIButton) {
        /* let means constant, no change at all */
        let digit = sender.currentTitle!
        // the type of digit is automatically determined
        // String?, ? means optional: 1) not-set (nil) or 2) string
        println("userstate=\(userisinthemiddleoftyping)");
        if (userisinthemiddleoftyping) {
            display.text = display.text! + digit;
        } else {
            display.text = digit;
            userisinthemiddleoftyping = true;
        }
        println("digit= \(digit)");
    }
}

