
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_led_data {int blinking; int (* platform_gpio_blink_set ) (int ,int ,unsigned long*,unsigned long*) ;int gpiod; } ;


 int GPIO_LED_BLINK ;
 struct gpio_led_data* cdev_to_gpio_led_data (struct led_classdev*) ;
 int stub1 (int ,int ,unsigned long*,unsigned long*) ;

__attribute__((used)) static int gpio_blink_set(struct led_classdev *led_cdev,
 unsigned long *delay_on, unsigned long *delay_off)
{
 struct gpio_led_data *led_dat = cdev_to_gpio_led_data(led_cdev);

 led_dat->blinking = 1;
 return led_dat->platform_gpio_blink_set(led_dat->gpiod, GPIO_LED_BLINK,
      delay_on, delay_off);
}
