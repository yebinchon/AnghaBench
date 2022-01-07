
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int GIC_HWIRQ_TO_SHARED (int ) ;
 int bitmap_set (int ,int ,unsigned int) ;
 int ipi_available ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;

void gic_ipi_domain_free(struct irq_domain *d, unsigned int virq,
    unsigned int nr_irqs)
{
 irq_hw_number_t base_hwirq;
 struct irq_data *data;

 data = irq_get_irq_data(virq);
 if (!data)
  return;

 base_hwirq = GIC_HWIRQ_TO_SHARED(irqd_to_hwirq(data));
 bitmap_set(ipi_available, base_hwirq, nr_irqs);
}
