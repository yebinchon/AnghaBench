
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intc_irqpin_priv {TYPE_1__* iomem; } ;
struct TYPE_2__ {int width; } ;


 unsigned long BIT (int) ;

__attribute__((used)) static inline unsigned long intc_irqpin_hwirq_mask(struct intc_irqpin_priv *p,
         int reg, int hw_irq)
{
 return BIT((p->iomem[reg].width - 1) - hw_irq);
}
