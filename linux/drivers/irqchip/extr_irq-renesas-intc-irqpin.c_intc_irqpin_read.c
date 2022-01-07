
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {struct intc_irqpin_iomem* iomem; } ;
struct intc_irqpin_iomem {unsigned long (* read ) (int ) ;int iomem; } ;


 unsigned long stub1 (int ) ;

__attribute__((used)) static inline unsigned long intc_irqpin_read(struct intc_irqpin_priv *p,
          int reg)
{
 struct intc_irqpin_iomem *i = &p->iomem[reg];

 return i->read(i->iomem);
}
