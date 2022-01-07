
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;



__attribute__((used)) static int gpio_siox_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 if (offset < 12)
  return 1;
 else
  return 0;
}
