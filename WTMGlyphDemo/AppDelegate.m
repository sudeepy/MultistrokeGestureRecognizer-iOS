//
//  AppDelegate.m
//  WTMGlyphDemo
//
//  Created by Torin Nguyen on 5/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      self.viewController = [[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
  } else {
      self.viewController = [[ViewController alloc] initWithNibName:@"ViewController_iPad" bundle:nil];
  }
  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
