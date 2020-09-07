//
//  ViewController.swift
//  firstCalc
//
//  Created by Elias Nazareno on 31/08/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var primeiroNumero: String = ""
    var segundoNumero: String = ""
    var operador:      String = ""
    var resultado:   Float = 0
    @IBOutlet weak var lalbel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setLabel(_ num: String) {
        if var texto = lalbel.text {
            texto = texto + num
            lalbel.text = texto
            if operador != "" {
                
            }
        } else {
            lalbel.text = num
        }
    }


    @IBAction func action_o(_ sender: Any) {
    //Obter valor digitado na calculado - OK
        //VErificar opera;ção escolhida - OK Atribuir a uma variavel ok
        //Obter segundo número OK
        //Fazer opera;çaão OK
        //mostrar resultado
        
    }
    
    @IBAction func adicaoPressed(_ sender: UIButton) {
        operador = "+"
        definirOperandos( )
        
    }
    
    @IBAction func subtracaoPressed(_ sender: UIButton) {
       operador = "-"
        definirOperandos( )
    }
    
    
    @IBAction func multiplicacaoPressed(_ sender: UIButton) {
        operador = "*"
        definirOperandos( )
    }
    
    
    @IBAction func resultadoPressed(_ sender: UIButton) {
        //
        definirOperandos()
        lalbel.text = String(resultado)
        //redefinirOperandos()
        
    }
    
    
    @IBAction func divisaoPressed(_ sender: UIButton) {
        operador = "/"
        definirOperandos( )
        redefinirOperandos()
    }
    
    func redefinirOperandos() {
        primeiroNumero = ""
        segundoNumero = ""
        lalbel.text = nil
    }
    
   func definirOperandos() {
        if let texto = lalbel.text, primeiroNumero == "" {
        primeiroNumero = texto
        lalbel.text = ""
        print("primeiroNumero: \(primeiroNumero)")
    }
    
    if let texto = lalbel.text, primeiroNumero != "" && segundoNumero == "" {
        segundoNumero = texto
        print("segundoNumero: \(segundoNumero)")
        
        if let primeiro = Float(primeiroNumero),
            let segundo = Float(segundoNumero) {
            
            print(obterResultado(operando1: primeiro, operando2: segundo))
        }
    }
}
    
    func obterResultado(operando1: Float, operando2: Float) -> Float {
        if let primeiro = Float(primeiroNumero),
            let segundo = Float(segundoNumero) {
            if operador == "+" {
                resultado = primeiro + segundo
            } else if operador == "-" {
                resultado = primeiro - segundo
            } else if operador == "/" && segundo != 0 {
                resultado = primeiro / segundo
            }else if operador == "*" {
                resultado = primeiro * segundo
            }
        }
        return resultado
    }
    
    
    
    //Botões
    @IBAction func zeroPressed(_ sender: UIButton) {
        setLabel("0")
    }
    
    @IBAction func umPressed(_ sender: UIButton) {
        setLabel("1")
    }
    
    
    @IBAction func doisPressed(_ sender: UIButton) {
        setLabel("2")
    }
    
    @IBAction func tresPressed(_ sender: UIButton) {
        setLabel("3")
    }
    
    
    @IBAction func quatroPressed(_ sender: UIButton) {
        setLabel("4")
    }
    
    
    @IBAction func cincoPressed(_ sender: UIButton) {
        setLabel("5")
    }
    
    
    @IBAction func seisPressed(_ sender: UIButton) {
        setLabel("6")
    }
    
    
    @IBAction func setePressed(_ sender: UIButton) {
        setLabel("7")
    }
    
    
    @IBAction func oitoPressed(_ sender: UIButton) {
        setLabel("8")
    }
    
    
    @IBAction func novePressed(_ sender: UIButton) {
        setLabel("9")
    }
    
    
}

