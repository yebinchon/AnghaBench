
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {int dummy; } ;


 int intc_irqpin_hwirq_mask (struct intc_irqpin_priv*,int,int) ;
 int intc_irqpin_write (struct intc_irqpin_priv*,int,int ) ;

__attribute__((used)) static inline void intc_irqpin_irq_write_hwirq(struct intc_irqpin_priv *p,
            int reg, int hw_irq)
{
 intc_irqpin_write(p, reg, intc_irqpin_hwirq_mask(p, reg, hw_irq));
}
