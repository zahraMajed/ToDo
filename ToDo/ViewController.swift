//
//  ViewController.swift
//  ToDo
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var taskField: UITextField!
    var tasks: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
    }

    @IBAction func beastBtnPressed(_ sender: UIButton) {
        if let  task = taskField.text {
            tasks.append(task)
            tabelView.reloadData()
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    
    
}

