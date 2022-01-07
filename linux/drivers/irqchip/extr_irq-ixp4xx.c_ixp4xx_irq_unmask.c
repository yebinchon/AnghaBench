
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixp4xx_irq {scalar_t__ irqbase; scalar_t__ is_356; } ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 scalar_t__ IXP4XX_ICMR ;
 scalar_t__ IXP4XX_ICMR2 ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 struct ixp4xx_irq* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ixp4xx_irq_unmask(struct irq_data *d)
{
 struct ixp4xx_irq *ixi = irq_data_get_irq_chip_data(d);
 u32 val;

 if (ixi->is_356 && d->hwirq >= 32) {
  val = __raw_readl(ixi->irqbase + IXP4XX_ICMR2);
  val |= BIT(d->hwirq - 32);
  __raw_writel(val, ixi->irqbase + IXP4XX_ICMR2);
 } else {
  val = __raw_readl(ixi->irqbase + IXP4XX_ICMR);
  val |= BIT(d->hwirq);
  __raw_writel(val, ixi->irqbase + IXP4XX_ICMR);
 }
}
