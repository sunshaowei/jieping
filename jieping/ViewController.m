//
//  ViewController.m
//  jieping
//
//  Created by kuanter on 16/5/10.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)jiePingButton:(id)sender {
    [self imageFromView:self.view];
}
//获得屏幕图像
- (void)imageFromView: (UIView *) orgView
{
    
   
    CGSize size = CGSizeMake(orgView.bounds.size.width, orgView.bounds.size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [orgView.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    _imageV.image=theImage;
    
    
    
//    UIGraphicsBeginImageContextWithOptions(orgView.bounds.size, YES, 0.0);  //NO，YES 控制是否透明
//    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    // 生成后的image
//    _imageV.image=image;
}
@end
