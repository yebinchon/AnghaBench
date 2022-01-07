
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned int GIC_HWIRQ_TO_SHARED (int ) ;
 int write_gic_wedge (unsigned int) ;

__attribute__((used)) static void gic_ack_irq(struct irq_data *d)
{
 unsigned int irq = GIC_HWIRQ_TO_SHARED(d->hwirq);

 write_gic_wedge(irq);
}
