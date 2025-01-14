
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 unsigned int const GIC_LOCAL ;
 int GIC_LOCAL_TO_HWIRQ (unsigned int const) ;
 unsigned int const GIC_SHARED ;
 int GIC_SHARED_TO_HWIRQ (unsigned int const) ;
 unsigned int const IRQ_TYPE_SENSE_MASK ;

__attribute__((used)) static int gic_irq_domain_xlate(struct irq_domain *d, struct device_node *ctrlr,
    const u32 *intspec, unsigned int intsize,
    irq_hw_number_t *out_hwirq,
    unsigned int *out_type)
{
 if (intsize != 3)
  return -EINVAL;

 if (intspec[0] == GIC_SHARED)
  *out_hwirq = GIC_SHARED_TO_HWIRQ(intspec[1]);
 else if (intspec[0] == GIC_LOCAL)
  *out_hwirq = GIC_LOCAL_TO_HWIRQ(intspec[1]);
 else
  return -EINVAL;
 *out_type = intspec[2] & IRQ_TYPE_SENSE_MASK;

 return 0;
}
