
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int num_gpios; int * gpios; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void __set_fan_ctrl(struct gpio_fan_data *fan_data, int ctrl_val)
{
 int i;

 for (i = 0; i < fan_data->num_gpios; i++)
  gpiod_set_value_cansleep(fan_data->gpios[i],
      (ctrl_val >> i) & 1);
}
