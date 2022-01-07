
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {struct intc_irqpin_iomem* iomem; } ;
struct intc_irqpin_iomem {int iomem; int (* write ) (int ,unsigned long) ;} ;


 int stub1 (int ,unsigned long) ;

__attribute__((used)) static inline void intc_irqpin_write(struct intc_irqpin_priv *p,
         int reg, unsigned long data)
{
 struct intc_irqpin_iomem *i = &p->iomem[reg];

 i->write(i->iomem, data);
}
