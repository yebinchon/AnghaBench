
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;
struct exiu_irq_data {scalar_t__ base; } ;


 int BIT (int ) ;
 scalar_t__ EIMASK ;
 int irq_chip_mask_parent (struct irq_data*) ;
 struct exiu_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void exiu_irq_mask(struct irq_data *d)
{
 struct exiu_irq_data *data = irq_data_get_irq_chip_data(d);
 u32 val;

 val = readl_relaxed(data->base + EIMASK) | BIT(d->hwirq);
 writel_relaxed(val, data->base + EIMASK);
 irq_chip_mask_parent(d);
}
