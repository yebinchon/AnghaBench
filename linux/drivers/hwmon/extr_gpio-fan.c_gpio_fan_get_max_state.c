
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct gpio_fan_data* devdata; } ;
struct gpio_fan_data {int num_speed; } ;


 int EINVAL ;

__attribute__((used)) static int gpio_fan_get_max_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 struct gpio_fan_data *fan_data = cdev->devdata;

 if (!fan_data)
  return -EINVAL;

 *state = fan_data->num_speed - 1;
 return 0;
}
