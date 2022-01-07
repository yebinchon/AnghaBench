
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct gpio_array {int dummy; } ;


 int GFP_KERNEL ;
 unsigned long* bitmap_alloc (unsigned int,int ) ;
 int bitmap_fill (unsigned long*,unsigned int) ;
 int bitmap_zero (unsigned long*,unsigned int) ;
 int gpiod_set_array_value_cansleep (unsigned int,struct gpio_desc**,struct gpio_array*,unsigned long*) ;
 int kfree (unsigned long*) ;

__attribute__((used)) static void gpiod_set_array_single_value_cansleep(unsigned int ndescs,
        struct gpio_desc **desc,
        struct gpio_array *info,
        int value)
{
 unsigned long *values;

 values = bitmap_alloc(ndescs, GFP_KERNEL);
 if (!values)
  return;

 if (value)
  bitmap_fill(values, ndescs);
 else
  bitmap_zero(values, ndescs);

 gpiod_set_array_value_cansleep(ndescs, desc, info, values);
 kfree(values);
}
