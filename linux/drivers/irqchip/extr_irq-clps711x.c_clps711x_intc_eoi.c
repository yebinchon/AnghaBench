
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int dummy; } ;
typedef size_t irq_hw_number_t ;
struct TYPE_4__ {scalar_t__ base; } ;
struct TYPE_3__ {scalar_t__ eoi; } ;


 TYPE_2__* clps711x_intc ;
 TYPE_1__* clps711x_irqs ;
 size_t irqd_to_hwirq (struct irq_data*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void clps711x_intc_eoi(struct irq_data *d)
{
 irq_hw_number_t hwirq = irqd_to_hwirq(d);

 writel_relaxed(0, clps711x_intc->base + clps711x_irqs[hwirq].eoi);
}
