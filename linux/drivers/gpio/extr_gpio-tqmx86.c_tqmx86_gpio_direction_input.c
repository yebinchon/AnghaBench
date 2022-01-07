
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int TQMX86_DIR_INPUT_MASK ;

__attribute__((used)) static int tqmx86_gpio_direction_input(struct gpio_chip *chip,
           unsigned int offset)
{

 if (BIT(offset) & TQMX86_DIR_INPUT_MASK)
  return 0;
 else
  return -EINVAL;
}
