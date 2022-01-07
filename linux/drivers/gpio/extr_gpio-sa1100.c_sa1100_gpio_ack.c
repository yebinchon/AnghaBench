
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_gpio_chip {scalar_t__ membase; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 scalar_t__ R_GEDR ;
 struct sa1100_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sa1100_gpio_ack(struct irq_data *d)
{
 struct sa1100_gpio_chip *sgc = irq_data_get_irq_chip_data(d);

 writel_relaxed(BIT(d->hwirq), sgc->membase + R_GEDR);
}
