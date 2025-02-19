
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x_gpio {int** regs; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 size_t REG_IE ;
 struct tc3589x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void tc3589x_gpio_irq_mask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct tc3589x_gpio *tc3589x_gpio = gpiochip_get_data(gc);
 int offset = d->hwirq;
 int regoffset = offset / 8;
 int mask = BIT(offset % 8);

 tc3589x_gpio->regs[REG_IE][regoffset] &= ~mask;
}
