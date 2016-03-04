//
//  ViewController.m
//  Buildin-webeditor
//
//  Created by NicholasXu on 16/3/4.
//  Copyright © 2016年 DehengXu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *page = [[NSBundle mainBundle] pathForResource:@"froala_editor/html/index.html" ofType:@""];
    NSLog(@"index.html : %@", page);
    NSString *html = [NSString stringWithContentsOfFile:page encoding:NSUTF8StringEncoding error:nil];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"froala_editor/html" ofType:@""];
    NSLog(@"path : %@", path);
    [self.webview loadHTMLString:html baseURL:[NSURL fileURLWithPath:path]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
