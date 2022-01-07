
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int num_gpios; int * gpios; } ;


 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int __get_fan_ctrl(struct gpio_fan_data *fan_data)
{
 int i;
 int ctrl_val = 0;

 for (i = 0; i < fan_data->num_gpios; i++) {
  int value;

  value = gpiod_get_value_cansleep(fan_data->gpios[i]);
  ctrl_val |= (value << i);
 }
 return ctrl_val;
}
