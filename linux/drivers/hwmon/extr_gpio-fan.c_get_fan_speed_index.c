
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_fan_data {int num_speed; int dev; TYPE_1__* speed; } ;
struct TYPE_2__ {int ctrl_val; } ;


 int ENODEV ;
 int __get_fan_ctrl (struct gpio_fan_data*) ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static int get_fan_speed_index(struct gpio_fan_data *fan_data)
{
 int ctrl_val = __get_fan_ctrl(fan_data);
 int i;

 for (i = 0; i < fan_data->num_speed; i++)
  if (fan_data->speed[i].ctrl_val == ctrl_val)
   return i;

 dev_warn(fan_data->dev,
   "missing speed array entry for GPIO value 0x%x\n", ctrl_val);

 return -ENODEV;
}
