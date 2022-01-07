
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int GPO_BLINK ;
 int GP_LVL ;
 int LED_HALF ;
 int __nasgpio_led_set_attr (struct led_classdev*,int ,int) ;
 int nasgpio_gpio_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nasgpio_led_set_brightness(struct led_classdev *led_cdev,
           enum led_brightness brightness)
{
 u32 setting = 0;
 if (brightness >= LED_HALF)
  setting = 1;





 spin_lock(&nasgpio_gpio_lock);




 if (brightness == 0)
  __nasgpio_led_set_attr(led_cdev, GPO_BLINK, 0);
 __nasgpio_led_set_attr(led_cdev, GP_LVL, setting);
 spin_unlock(&nasgpio_gpio_lock);
}
