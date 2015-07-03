//
//  ViewController.m
//  textField
//
//  Created by Tassio Lima on 03/07/15.
//  Copyright (c) 2015 Tassio Lima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.mainTextField.keyboardType = UIKeyboardTypeNumberPad;
    
    self.mainTextField.clearButtonMode = UITextFieldViewModeAlways;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(BOOL)verificarSeEhPrimo:(NSInteger)numero

{
    //Um numero eh primo se eh divisivel por 1 e por ele mesmo,
    
    int resultado = 0;
    
    for (int i =  1; i <= numero; i++) {
        
        if (numero % i == 0 ){
            
            
            resultado ++;
            
        }
        
    }
    
    if (resultado <= 2 ){
        return YES;
        
    }else{
        
        return NO;
        
    }
    
}

- (IBAction)clearButton:(UIButton *)sender {
   
    
    self.mainTextField.text = @"";
    
    
}


- (IBAction)verifyNumber:(UIButton*)sender {
    
    NSInteger testePrimo = self.mainTextField.text.intValue;
    BOOL isPrimo =  [self verificarSeEhPrimo:testePrimo];
    NSLog(@"%d", isPrimo);
    [self showResultAlert:isPrimo];
    
    
    
}

-(void) showResultAlert: (BOOL)ehPrimo{

    NSString* mensagem;
    
    if (ehPrimo) {
    mensagem = @"Seu número é primo";
    } else{
        mensagem = @"Seu número não é primo";
        }
    
    
    UIAlertView* alerta = [[UIAlertView alloc] initWithTitle:@"Será que é um número Primo?" message:mensagem delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    

    [alerta show];
    
    }
    


@end
