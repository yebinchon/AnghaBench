
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int brightness; int max_brightness; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_SUSPENDED ;
 int led_set_brightness_nopm (struct led_classdev*,int ) ;
 int min (int,int ) ;

void led_set_brightness_nosleep(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 led_cdev->brightness = min(value, led_cdev->max_brightness);

 if (led_cdev->flags & LED_SUSPENDED)
  return;

 led_set_brightness_nopm(led_cdev, led_cdev->brightness);
}
