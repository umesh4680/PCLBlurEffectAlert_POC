//
//  ViewController.swift
//  CustomeAlertSample
//
//  Created by Umesh on 02/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func showAlertButtonClicked(_ sender: Any) {
       
       // Make PCLAlert View Object
        let alert = PCLBlurEffectAlert.Controller(title: "PCL Bluer Alert", message: "Sample", effect: UIBlurEffect(style:.regular), style: .alert)
        
       // Add Cancel Button On Alert to dissmiss Alert
        let alertBtn = PCLBlurEffectAlert.AlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(alertBtn)
       
        // Configure Alert 
        alert.configure(backgroundColor: .red)
        alert.configure(cornerRadius: 10.0)
        alert.configure(overlayBackgroundColor: .lightGray)
        alert.configure(titleFont: UIFont.systemFont(ofSize: 20), titleColor: .blue)
        
        // Show Alert
        alert.show()
        
    }

}

