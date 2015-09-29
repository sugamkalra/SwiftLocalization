//
//  ViewController.swift
//  SwiftyLocalization
//
//  Created by Sugam Kalra on 18/09/15.
//  Copyright (c) 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblSwiftyDemo: UILabel!
    
    @IBOutlet weak var lblTextConversion: UILabel!
    
    
    
    @IBOutlet weak var btnTextConverted: UIButton!
    
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblSwiftyDemo.text = NSLocalizedString("SWIFTY_DEMO_APP",comment: "Swifty Demo App")
        
        lblTextConversion.text = NSLocalizedString("TEXT_CONVERSION",comment: "Text Conversion")
        
        btnTextConverted.setTitle(NSLocalizedString("TEXT_CONVERTED",comment: "Text Converted"), forState: UIControlState.Normal)
    }
    
    
    @IBAction func btnTextConvertedPressed(sender: AnyObject)
    {
        let alertController: UIAlertController = UIAlertController(title: NSLocalizedString("TEXT_CONVERTED",comment: "Text Converted"), message: NSLocalizedString("TEXT_CONVERTED",comment: "Text Converted"), preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: NSLocalizedString("OK", comment:"Ok"), style:.Default) { (action) -> Void in
            
        }
        
        alertController.addAction(cancelAction)
        
        
        self.presentViewController(alertController, animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

