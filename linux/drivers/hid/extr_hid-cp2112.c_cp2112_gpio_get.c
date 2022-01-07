
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int cp2112_gpio_get_all (struct gpio_chip*) ;

__attribute__((used)) static int cp2112_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 int ret;

 ret = cp2112_gpio_get_all(chip);
 if (ret < 0)
  return ret;

 return (ret >> offset) & 1;
}
