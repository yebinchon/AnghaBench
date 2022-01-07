
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int gpio_siox_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int gpio_siox_direction_output(struct gpio_chip *chip,
          unsigned int offset, int value)
{
 if (offset < 12)
  return -EINVAL;

 gpio_siox_set(chip, offset, value);
 return 0;
}
