
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 unsigned int IRQ_TYPE_EDGE_RISING ;

__attribute__((used)) static int gic_ipi_domain_xlate(struct irq_domain *d, struct device_node *ctrlr,
    const u32 *intspec, unsigned int intsize,
    irq_hw_number_t *out_hwirq,
    unsigned int *out_type)
{




 *out_hwirq = 0;
 *out_type = IRQ_TYPE_EDGE_RISING;

 return 0;
}
