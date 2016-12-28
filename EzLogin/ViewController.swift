//
//  ViewController.swift
//  EzLogin
//
//  Created by iOS Student on 12/27/16.
//  Copyright © 2016 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var users = ["tu":"111","thanh":"222","duc":"333"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    
    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_pass: UITextField!
    @IBAction func action_Login(_ sender: AnyObject) {
        if let password = users[tf_user.text!]{
            if password == tf_pass.text{
                print("Dang nhap thanh cong!")
            }else{
                print("Tai khoan hoac Mat khau khong chinh xac!")
            }
        }
        else{
            print("Tai khoan khong ton tai!")
        }
    }
    
    @IBAction func action_List(_ sender: AnyObject) {
        for (tentaikhoan, matkhau) in users{
            print("ten tai khoan: ", tentaikhoan)
            print("mat khau: ",matkhau)
        }

    }
    
    @IBAction func action_Add(_ sender: AnyObject) {
        if users[tf_user.text!] != nil{
            print("Tai khoan da ton tai!")
        }else{
            users[tf_user.text!] = tf_pass.text!
            print("Them tai khoan thanh cong!")
        }
    }
    
    @IBAction func action_Delete(_ sender: AnyObject) {
        if users[tf_user.text!] != nil{
            users.removeValue(forKey: tf_user.text!)
            print("Xoa thanh cong!")
        }else{
            print("Tai khoan khong ton tai!")
        }
    }

}

