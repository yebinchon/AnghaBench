
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int GIC_HWIRQ_TO_SHARED (int ) ;
 int GIC_WEDGE_RW ;
 int irqd_to_hwirq (struct irq_data*) ;
 int write_gic_wedge (int) ;

__attribute__((used)) static void gic_send_ipi(struct irq_data *d, unsigned int cpu)
{
 irq_hw_number_t hwirq = GIC_HWIRQ_TO_SHARED(irqd_to_hwirq(d));

 write_gic_wedge(GIC_WEDGE_RW | hwirq);
}
