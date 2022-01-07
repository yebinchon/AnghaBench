
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;


 int BIT (unsigned int) ;
 int R_GPCR ;
 int R_GPSR ;
 TYPE_1__* sa1100_gpio_chip (struct gpio_chip*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sa1100_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 int reg = value ? R_GPSR : R_GPCR;

 writel_relaxed(BIT(offset), sa1100_gpio_chip(chip)->membase + reg);
}
