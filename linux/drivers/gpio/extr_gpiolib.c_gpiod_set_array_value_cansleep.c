
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct gpio_array {int dummy; } ;


 int EINVAL ;
 int extra_checks ;
 int gpiod_set_array_value_complex (int,int,unsigned int,struct gpio_desc**,struct gpio_array*,unsigned long*) ;
 int might_sleep_if (int ) ;

int gpiod_set_array_value_cansleep(unsigned int array_size,
       struct gpio_desc **desc_array,
       struct gpio_array *array_info,
       unsigned long *value_bitmap)
{
 might_sleep_if(extra_checks);
 if (!desc_array)
  return -EINVAL;
 return gpiod_set_array_value_complex(0, 1, array_size,
          desc_array, array_info,
          value_bitmap);
}
