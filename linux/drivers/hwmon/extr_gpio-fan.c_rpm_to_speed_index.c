
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_speed {unsigned long rpm; } ;
struct gpio_fan_data {int num_speed; struct gpio_fan_speed* speed; } ;



__attribute__((used)) static int rpm_to_speed_index(struct gpio_fan_data *fan_data, unsigned long rpm)
{
 struct gpio_fan_speed *speed = fan_data->speed;
 int i;

 for (i = 0; i < fan_data->num_speed; i++)
  if (speed[i].rpm >= rpm)
   return i;

 return fan_data->num_speed - 1;
}
