
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct adnp {unsigned int reg_shift; int * irq_enable; } ;


 int BIT (unsigned int) ;
 struct adnp* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void adnp_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct adnp *adnp = gpiochip_get_data(gc);
 unsigned int reg = d->hwirq >> adnp->reg_shift;
 unsigned int pos = d->hwirq & 7;

 adnp->irq_enable[reg] |= BIT(pos);
}
