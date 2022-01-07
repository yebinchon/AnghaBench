
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;


 int BIT (unsigned int) ;
 scalar_t__ R_GPLR ;
 int readl_relaxed (scalar_t__) ;
 TYPE_1__* sa1100_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int sa1100_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 return readl_relaxed(sa1100_gpio_chip(chip)->membase + R_GPLR) &
  BIT(offset);
}
