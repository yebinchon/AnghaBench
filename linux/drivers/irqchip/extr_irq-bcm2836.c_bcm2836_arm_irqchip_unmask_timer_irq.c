
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;


 scalar_t__ LOCAL_IRQ_CNTPSIRQ ;
 int LOCAL_TIMER_INT_CONTROL0 ;
 int bcm2836_arm_irqchip_unmask_per_cpu_irq (int ,scalar_t__,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void bcm2836_arm_irqchip_unmask_timer_irq(struct irq_data *d)
{
 bcm2836_arm_irqchip_unmask_per_cpu_irq(LOCAL_TIMER_INT_CONTROL0,
            d->hwirq - LOCAL_IRQ_CNTPSIRQ,
            smp_processor_id());
}
