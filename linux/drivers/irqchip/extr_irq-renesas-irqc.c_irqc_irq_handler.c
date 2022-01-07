
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irqc_priv {int irq_domain; scalar_t__ iomem; } ;
struct irqc_irq {int hw_irq; struct irqc_priv* p; } ;
typedef int irqreturn_t ;


 int BIT (int ) ;
 scalar_t__ DETECT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int generic_handle_irq (int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int irq_find_mapping (int ,int ) ;
 int irqc_dbg (struct irqc_irq*,char*) ;

__attribute__((used)) static irqreturn_t irqc_irq_handler(int irq, void *dev_id)
{
 struct irqc_irq *i = dev_id;
 struct irqc_priv *p = i->p;
 u32 bit = BIT(i->hw_irq);

 irqc_dbg(i, "demux1");

 if (ioread32(p->iomem + DETECT_STATUS) & bit) {
  iowrite32(bit, p->iomem + DETECT_STATUS);
  irqc_dbg(i, "demux2");
  generic_handle_irq(irq_find_mapping(p->irq_domain, i->hw_irq));
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
