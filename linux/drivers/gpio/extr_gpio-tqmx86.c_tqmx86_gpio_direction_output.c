
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int TQMX86_DIR_INPUT_MASK ;
 int tqmx86_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int tqmx86_gpio_direction_output(struct gpio_chip *chip,
     unsigned int offset,
     int value)
{

 if (BIT(offset) & TQMX86_DIR_INPUT_MASK)
  return -EINVAL;

 tqmx86_gpio_set(chip, offset, value);
 return 0;
}
