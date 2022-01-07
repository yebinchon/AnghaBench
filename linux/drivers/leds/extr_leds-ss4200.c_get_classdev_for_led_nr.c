
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct nasgpio_led {struct led_classdev led_cdev; } ;


 struct nasgpio_led* nasgpio_leds ;

__attribute__((used)) static struct led_classdev *get_classdev_for_led_nr(int nr)
{
 struct nasgpio_led *nas_led = &nasgpio_leds[nr];
 struct led_classdev *led = &nas_led->led_cdev;
 return led;
}
