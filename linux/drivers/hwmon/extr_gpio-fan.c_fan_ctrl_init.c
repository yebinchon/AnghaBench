
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int num_gpios; int pwm_enable; scalar_t__ speed_index; struct gpio_desc** gpios; } ;
struct gpio_desc {int dummy; } ;


 scalar_t__ get_fan_speed_index (struct gpio_fan_data*) ;
 int gpiod_direction_output (struct gpio_desc*,int ) ;
 int gpiod_get_value_cansleep (struct gpio_desc*) ;

__attribute__((used)) static int fan_ctrl_init(struct gpio_fan_data *fan_data)
{
 int num_gpios = fan_data->num_gpios;
 struct gpio_desc **gpios = fan_data->gpios;
 int i, err;

 for (i = 0; i < num_gpios; i++) {






  err = gpiod_direction_output(gpios[i],
     gpiod_get_value_cansleep(gpios[i]));
  if (err)
   return err;
 }

 fan_data->pwm_enable = 1;
 fan_data->speed_index = get_fan_speed_index(fan_data);
 if (fan_data->speed_index < 0)
  return fan_data->speed_index;

 return 0;
}
