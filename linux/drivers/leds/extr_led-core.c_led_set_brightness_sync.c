
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int brightness; int max_brightness; scalar_t__ blink_delay_off; scalar_t__ blink_delay_on; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int EBUSY ;
 int LED_SUSPENDED ;
 int __led_set_brightness_blocking (struct led_classdev*,int ) ;
 int min (int,int ) ;

int led_set_brightness_sync(struct led_classdev *led_cdev,
       enum led_brightness value)
{
 if (led_cdev->blink_delay_on || led_cdev->blink_delay_off)
  return -EBUSY;

 led_cdev->brightness = min(value, led_cdev->max_brightness);

 if (led_cdev->flags & LED_SUSPENDED)
  return 0;

 return __led_set_brightness_blocking(led_cdev, led_cdev->brightness);
}
