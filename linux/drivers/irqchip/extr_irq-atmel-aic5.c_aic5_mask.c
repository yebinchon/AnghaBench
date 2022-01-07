
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; int mask; struct irq_domain* domain; } ;
struct irq_chip_generic {int mask_cache; } ;


 int AT91_AIC5_IDCR ;
 int AT91_AIC5_SSR ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 struct irq_chip_generic* irq_get_domain_generic_chip (struct irq_domain*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,int,int ) ;

__attribute__((used)) static void aic5_mask(struct irq_data *d)
{
 struct irq_domain *domain = d->domain;
 struct irq_chip_generic *bgc = irq_get_domain_generic_chip(domain, 0);
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);





 irq_gc_lock(bgc);
 irq_reg_writel(gc, d->hwirq, AT91_AIC5_SSR);
 irq_reg_writel(gc, 1, AT91_AIC5_IDCR);
 gc->mask_cache &= ~d->mask;
 irq_gc_unlock(bgc);
}
