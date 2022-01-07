
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int max_brightness; } ;


 int led_set_brightness_nosleep (struct led_classdev*,int ) ;

__attribute__((used)) static int defon_trig_activate(struct led_classdev *led_cdev)
{
 led_set_brightness_nosleep(led_cdev, led_cdev->max_brightness);
 return 0;
}
