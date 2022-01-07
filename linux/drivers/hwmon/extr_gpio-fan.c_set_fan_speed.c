
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_fan_data {int speed_index; TYPE_1__* speed; } ;
struct TYPE_2__ {int ctrl_val; } ;


 int __set_fan_ctrl (struct gpio_fan_data*,int ) ;

__attribute__((used)) static void set_fan_speed(struct gpio_fan_data *fan_data, int speed_index)
{
 if (fan_data->speed_index == speed_index)
  return;

 __set_fan_ctrl(fan_data, fan_data->speed[speed_index].ctrl_val);
 fan_data->speed_index = speed_index;
}
