
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_2__ {int * disable; } ;


 size_t HWIRQ_BANK (int ) ;
 int HWIRQ_BIT (int ) ;
 TYPE_1__ intc ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void armctrl_mask_irq(struct irq_data *d)
{
 writel_relaxed(HWIRQ_BIT(d->hwirq), intc.disable[HWIRQ_BANK(d->hwirq)]);
}
