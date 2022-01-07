
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ LOCAL_PM_ROUTING_CLR ;
 TYPE_1__ intc ;
 int smp_processor_id () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2836_arm_irqchip_mask_pmu_irq(struct irq_data *d)
{
 writel(1 << smp_processor_id(), intc.base + LOCAL_PM_ROUTING_CLR);
}
