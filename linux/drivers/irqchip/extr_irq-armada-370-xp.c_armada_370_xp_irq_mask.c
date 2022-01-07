
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 scalar_t__ ARMADA_370_XP_INT_CLEAR_ENABLE_OFFS ;
 scalar_t__ ARMADA_370_XP_INT_SET_MASK_OFFS ;
 int irqd_to_hwirq (struct irq_data*) ;
 int is_percpu_irq (int ) ;
 scalar_t__ main_int_base ;
 scalar_t__ per_cpu_int_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void armada_370_xp_irq_mask(struct irq_data *d)
{
 irq_hw_number_t hwirq = irqd_to_hwirq(d);

 if (!is_percpu_irq(hwirq))
  writel(hwirq, main_int_base +
    ARMADA_370_XP_INT_CLEAR_ENABLE_OFFS);
 else
  writel(hwirq, per_cpu_int_base +
    ARMADA_370_XP_INT_SET_MASK_OFFS);
}
