
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 scalar_t__ RDA_INTC_MASK_CLR ;
 scalar_t__ rda_intc_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void rda_intc_mask_irq(struct irq_data *d)
{
 writel_relaxed(BIT(d->hwirq), rda_intc_base + RDA_INTC_MASK_CLR);
}
