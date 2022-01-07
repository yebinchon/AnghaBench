
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;



__attribute__((used)) static int idio_16_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 if (offset > 15)
  return 1;

 return 0;
}
