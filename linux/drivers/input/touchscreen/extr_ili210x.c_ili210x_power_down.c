
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;

__attribute__((used)) static void ili210x_power_down(void *data)
{
 struct gpio_desc *reset_gpio = data;

 gpiod_set_value_cansleep(reset_gpio, 1);
}
