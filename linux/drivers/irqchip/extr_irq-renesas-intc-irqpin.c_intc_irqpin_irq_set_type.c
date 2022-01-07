
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct intc_irqpin_priv {int dummy; } ;


 int EINVAL ;
 unsigned char INTC_IRQ_SENSE_VALID ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 unsigned char* intc_irqpin_sense ;
 int intc_irqpin_set_sense (struct intc_irqpin_priv*,int ,unsigned char) ;
 struct intc_irqpin_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int intc_irqpin_irq_set_type(struct irq_data *d, unsigned int type)
{
 unsigned char value = intc_irqpin_sense[type & IRQ_TYPE_SENSE_MASK];
 struct intc_irqpin_priv *p = irq_data_get_irq_chip_data(d);

 if (!(value & INTC_IRQ_SENSE_VALID))
  return -EINVAL;

 return intc_irqpin_set_sense(p, irqd_to_hwirq(d),
         value ^ INTC_IRQ_SENSE_VALID);
}
