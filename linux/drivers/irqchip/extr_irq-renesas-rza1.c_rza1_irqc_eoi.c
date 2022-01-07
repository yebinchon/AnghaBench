
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rza1_irqc_priv {scalar_t__ base; } ;
struct irq_data {int dummy; } ;


 int BIT (int ) ;
 int GENMASK (scalar_t__,int ) ;
 scalar_t__ IRQC_NUM_IRQ ;
 scalar_t__ IRQRR ;
 int irq_chip_eoi_parent (struct irq_data*) ;
 struct rza1_irqc_priv* irq_data_to_priv (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int readw_relaxed (scalar_t__) ;
 int writew_relaxed (int,scalar_t__) ;

__attribute__((used)) static void rza1_irqc_eoi(struct irq_data *d)
{
 struct rza1_irqc_priv *priv = irq_data_to_priv(d);
 u16 bit = BIT(irqd_to_hwirq(d));
 u16 tmp;

 tmp = readw_relaxed(priv->base + IRQRR);
 if (tmp & bit)
  writew_relaxed(GENMASK(IRQC_NUM_IRQ - 1, 0) & ~bit,
          priv->base + IRQRR);

 irq_chip_eoi_parent(d);
}
