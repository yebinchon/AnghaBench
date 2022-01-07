
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_chip_generic {int wake_active; } ;


 int intc_irq_set_mask (struct irq_chip_generic*,int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;

void ingenic_intc_irq_suspend(struct irq_data *data)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
 intc_irq_set_mask(gc, gc->wake_active);
}
