
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_led_data {int gpiod; scalar_t__ can_sleep; scalar_t__ blinking; int (* platform_gpio_blink_set ) (int ,int,int *,int *) ;} ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 struct gpio_led_data* cdev_to_gpio_led_data (struct led_classdev*) ;
 int gpiod_set_value (int ,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int stub1 (int ,int,int *,int *) ;

__attribute__((used)) static void gpio_led_set(struct led_classdev *led_cdev,
 enum led_brightness value)
{
 struct gpio_led_data *led_dat = cdev_to_gpio_led_data(led_cdev);
 int level;

 if (value == LED_OFF)
  level = 0;
 else
  level = 1;

 if (led_dat->blinking) {
  led_dat->platform_gpio_blink_set(led_dat->gpiod, level,
       ((void*)0), ((void*)0));
  led_dat->blinking = 0;
 } else {
  if (led_dat->can_sleep)
   gpiod_set_value_cansleep(led_dat->gpiod, level);
  else
   gpiod_set_value(led_dat->gpiod, level);
 }
}
