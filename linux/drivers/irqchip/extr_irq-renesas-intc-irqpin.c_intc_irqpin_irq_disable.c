
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct intc_irqpin_priv {int * irq; } ;


 int INTC_IRQPIN_REG_MASK ;
 int intc_irqpin_dbg (int *,char*) ;
 int intc_irqpin_irq_write_hwirq (struct intc_irqpin_priv*,int ,int) ;
 struct intc_irqpin_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void intc_irqpin_irq_disable(struct irq_data *d)
{
 struct intc_irqpin_priv *p = irq_data_get_irq_chip_data(d);
 int hw_irq = irqd_to_hwirq(d);

 intc_irqpin_dbg(&p->irq[hw_irq], "disable");
 intc_irqpin_irq_write_hwirq(p, INTC_IRQPIN_REG_MASK, hw_irq);
}
