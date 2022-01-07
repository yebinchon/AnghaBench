
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;



__attribute__((used)) static int mmp_irq_domain_xlate(struct irq_domain *d, struct device_node *node,
    const u32 *intspec, unsigned int intsize,
    unsigned long *out_hwirq,
    unsigned int *out_type)
{
 *out_hwirq = intspec[0];
 return 0;
}
