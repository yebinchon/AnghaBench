
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct ft010_irq_data {int base; } ;


 int BIT (int ) ;
 int FT010_IRQ_CLEAR (int ) ;
 struct ft010_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void ft010_irq_ack(struct irq_data *d)
{
 struct ft010_irq_data *f = irq_data_get_irq_chip_data(d);

 writel(BIT(irqd_to_hwirq(d)), FT010_IRQ_CLEAR(f->base));
}
