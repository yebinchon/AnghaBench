
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int mask; } ;
struct irq_chip_generic {int dummy; } ;


 int AT91_AIC_ISCR ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_writel (struct irq_chip_generic*,int ,int ) ;

__attribute__((used)) static int aic_retrigger(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);


 irq_gc_lock(gc);
 irq_reg_writel(gc, d->mask, AT91_AIC_ISCR);
 irq_gc_unlock(gc);

 return 0;
}
