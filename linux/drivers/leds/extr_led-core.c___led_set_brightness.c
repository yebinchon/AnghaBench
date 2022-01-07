
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int (* brightness_set ) (struct led_classdev*,int) ;} ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int ENOTSUPP ;
 int stub1 (struct led_classdev*,int) ;

__attribute__((used)) static int __led_set_brightness(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 if (!led_cdev->brightness_set)
  return -ENOTSUPP;

 led_cdev->brightness_set(led_cdev, value);

 return 0;
}
