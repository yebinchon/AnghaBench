
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct irq_chip_generic {int dummy; } ;


 int AT91_AIC_SMR (int ) ;
 int aic_common_set_type (struct irq_data*,unsigned int,unsigned int*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irq_reg_readl (struct irq_chip_generic*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,unsigned int,int ) ;

__attribute__((used)) static int aic_set_type(struct irq_data *d, unsigned type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 unsigned int smr;
 int ret;

 smr = irq_reg_readl(gc, AT91_AIC_SMR(d->hwirq));
 ret = aic_common_set_type(d, type, &smr);
 if (ret)
  return ret;

 irq_reg_writel(gc, smr, AT91_AIC_SMR(d->hwirq));

 return 0;
}
