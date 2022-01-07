
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {scalar_t__* param; } ;
struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int GIC_LOCAL_TO_HWIRQ (scalar_t__) ;
 scalar_t__ GIC_SHARED ;
 int GIC_SHARED_TO_HWIRQ (scalar_t__) ;
 int gic_irq_domain_map (struct irq_domain*,unsigned int,int ) ;

__attribute__((used)) static int gic_irq_domain_alloc(struct irq_domain *d, unsigned int virq,
    unsigned int nr_irqs, void *arg)
{
 struct irq_fwspec *fwspec = arg;
 irq_hw_number_t hwirq;

 if (fwspec->param[0] == GIC_SHARED)
  hwirq = GIC_SHARED_TO_HWIRQ(fwspec->param[1]);
 else
  hwirq = GIC_LOCAL_TO_HWIRQ(fwspec->param[1]);

 return gic_irq_domain_map(d, virq, hwirq);
}
