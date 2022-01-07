
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;
struct fpga_irq_data {scalar_t__ base; } ;


 scalar_t__ IRQ_ENABLE_SET ;
 struct fpga_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fpga_irq_unmask(struct irq_data *d)
{
 struct fpga_irq_data *f = irq_data_get_irq_chip_data(d);
 u32 mask = 1 << d->hwirq;

 writel(mask, f->base + IRQ_ENABLE_SET);
}
