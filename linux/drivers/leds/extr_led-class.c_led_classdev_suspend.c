
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; } ;


 int LED_SUSPENDED ;
 int led_set_brightness_nopm (struct led_classdev*,int ) ;

void led_classdev_suspend(struct led_classdev *led_cdev)
{
 led_cdev->flags |= LED_SUSPENDED;
 led_set_brightness_nopm(led_cdev, 0);
}
