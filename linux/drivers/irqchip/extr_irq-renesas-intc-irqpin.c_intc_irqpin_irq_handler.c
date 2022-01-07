
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {int dummy; } ;
struct intc_irqpin_irq {int domain_irq; int hw_irq; struct intc_irqpin_priv* p; } ;
typedef int irqreturn_t ;


 int INTC_IRQPIN_REG_SOURCE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int generic_handle_irq (int ) ;
 int intc_irqpin_dbg (struct intc_irqpin_irq*,char*) ;
 unsigned long intc_irqpin_hwirq_mask (struct intc_irqpin_priv*,int ,int ) ;
 unsigned long intc_irqpin_read (struct intc_irqpin_priv*,int ) ;
 int intc_irqpin_write (struct intc_irqpin_priv*,int ,unsigned long) ;

__attribute__((used)) static irqreturn_t intc_irqpin_irq_handler(int irq, void *dev_id)
{
 struct intc_irqpin_irq *i = dev_id;
 struct intc_irqpin_priv *p = i->p;
 unsigned long bit;

 intc_irqpin_dbg(i, "demux1");
 bit = intc_irqpin_hwirq_mask(p, INTC_IRQPIN_REG_SOURCE, i->hw_irq);

 if (intc_irqpin_read(p, INTC_IRQPIN_REG_SOURCE) & bit) {
  intc_irqpin_write(p, INTC_IRQPIN_REG_SOURCE, ~bit);
  intc_irqpin_dbg(i, "demux2");
  generic_handle_irq(i->domain_irq);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
