
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int irqbase; } ;


 TYPE_1__* sa1100_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int sa1100_to_irq(struct gpio_chip *chip, unsigned offset)
{
 return sa1100_gpio_chip(chip)->irqbase + offset;
}
