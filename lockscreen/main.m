//
//  main.m
//  lockscreen
//
//  Created by takuya on 20180516.
//  Copyright © 2018年 takuya. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
  @autoreleasepool {

    NSBundle *bnd = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];

    Class pc = [bnd principalClass];
    id k = [[pc alloc]init];

    [k performSelector:@selector(_lockScreenMenuHit:) withObject:NULL];
  }
  return 0;
}
