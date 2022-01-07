
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_gpio_chip {unsigned int irqmask; } ;
struct irq_data {int hwirq; } ;


 unsigned int BIT (int ) ;
 struct sa1100_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int sa1100_update_edge_regs (struct sa1100_gpio_chip*) ;

__attribute__((used)) static void sa1100_gpio_mask(struct irq_data *d)
{
 struct sa1100_gpio_chip *sgc = irq_data_get_irq_chip_data(d);
 unsigned int mask = BIT(d->hwirq);

 sgc->irqmask &= ~mask;

 sa1100_update_edge_regs(sgc);
}
