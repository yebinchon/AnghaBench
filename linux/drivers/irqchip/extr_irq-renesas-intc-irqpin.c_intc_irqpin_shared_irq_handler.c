
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {int shared_irq_mask; int * irq; } ;
typedef int irqreturn_t ;


 int BIT (int) ;
 int INTC_IRQPIN_REG_SOURCE ;
 int IRQ_NONE ;
 int intc_irqpin_irq_handler (int,int *) ;
 unsigned int intc_irqpin_read (struct intc_irqpin_priv*,int ) ;

__attribute__((used)) static irqreturn_t intc_irqpin_shared_irq_handler(int irq, void *dev_id)
{
 struct intc_irqpin_priv *p = dev_id;
 unsigned int reg_source = intc_irqpin_read(p, INTC_IRQPIN_REG_SOURCE);
 irqreturn_t status = IRQ_NONE;
 int k;

 for (k = 0; k < 8; k++) {
  if (reg_source & BIT(7 - k)) {
   if (BIT(k) & p->shared_irq_mask)
    continue;

   status |= intc_irqpin_irq_handler(irq, &p->irq[k]);
  }
 }

 return status;
}
