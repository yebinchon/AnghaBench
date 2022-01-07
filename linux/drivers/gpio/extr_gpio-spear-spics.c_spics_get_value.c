
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int spics_get_value(struct gpio_chip *chip, unsigned offset)
{
 return -ENXIO;
}
