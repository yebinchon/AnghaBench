
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {unsigned int hwirq; struct irq_domain* domain; } ;
struct irq_chip_generic {int dummy; } ;


 int AT91_AIC5_SMR ;
 int AT91_AIC5_SSR ;
 int aic_common_set_type (struct irq_data*,unsigned int,unsigned int*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 struct irq_chip_generic* irq_get_domain_generic_chip (struct irq_domain*,int ) ;
 unsigned int irq_reg_readl (struct irq_chip_generic*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,unsigned int,int ) ;

__attribute__((used)) static int aic5_set_type(struct irq_data *d, unsigned type)
{
 struct irq_domain *domain = d->domain;
 struct irq_chip_generic *bgc = irq_get_domain_generic_chip(domain, 0);
 unsigned int smr;
 int ret;

 irq_gc_lock(bgc);
 irq_reg_writel(bgc, d->hwirq, AT91_AIC5_SSR);
 smr = irq_reg_readl(bgc, AT91_AIC5_SMR);
 ret = aic_common_set_type(d, type, &smr);
 if (!ret)
  irq_reg_writel(bgc, smr, AT91_AIC5_SMR);
 irq_gc_unlock(bgc);

 return ret;
}
