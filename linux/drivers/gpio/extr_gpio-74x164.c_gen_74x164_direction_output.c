
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gen_74x164_set_value (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int gen_74x164_direction_output(struct gpio_chip *gc,
  unsigned offset, int val)
{
 gen_74x164_set_value(gc, offset, val);
 return 0;
}
