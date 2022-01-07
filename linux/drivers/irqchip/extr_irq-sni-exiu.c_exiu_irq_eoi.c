
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct exiu_irq_data {scalar_t__ base; } ;


 int BIT (int ) ;
 scalar_t__ EIREQCLR ;
 int irq_chip_eoi_parent (struct irq_data*) ;
 struct exiu_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void exiu_irq_eoi(struct irq_data *d)
{
 struct exiu_irq_data *data = irq_data_get_irq_chip_data(d);

 writel(BIT(d->hwirq), data->base + EIREQCLR);
 irq_chip_eoi_parent(d);
}
