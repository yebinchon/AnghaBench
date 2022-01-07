
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irqc_priv {scalar_t__ iomem; int * irq; } ;
struct irq_data {int dummy; } ;


 int EINVAL ;
 scalar_t__ IRQC_CONFIG (int) ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct irqc_priv* irq_data_to_priv (struct irq_data*) ;
 int irqc_dbg (int *,char*) ;
 unsigned char* irqc_sense ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int irqc_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct irqc_priv *p = irq_data_to_priv(d);
 int hw_irq = irqd_to_hwirq(d);
 unsigned char value = irqc_sense[type & IRQ_TYPE_SENSE_MASK];
 u32 tmp;

 irqc_dbg(&p->irq[hw_irq], "sense");

 if (!value)
  return -EINVAL;

 tmp = ioread32(p->iomem + IRQC_CONFIG(hw_irq));
 tmp &= ~0x3f;
 tmp |= value;
 iowrite32(tmp, p->iomem + IRQC_CONFIG(hw_irq));
 return 0;
}
