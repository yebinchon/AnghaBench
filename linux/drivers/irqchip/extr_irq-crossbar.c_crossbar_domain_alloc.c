
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int param_count; scalar_t__* param; } ;
struct irq_domain {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {scalar_t__ max_crossbar_sources; } ;


 int EINVAL ;
 int allocate_gic_irq (struct irq_domain*,unsigned int,scalar_t__) ;
 TYPE_1__* cb ;
 int crossbar_chip ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,scalar_t__,int *,int *) ;

__attribute__((used)) static int crossbar_domain_alloc(struct irq_domain *d, unsigned int virq,
     unsigned int nr_irqs, void *data)
{
 struct irq_fwspec *fwspec = data;
 irq_hw_number_t hwirq;
 int i;

 if (fwspec->param_count != 3)
  return -EINVAL;
 if (fwspec->param[0] != 0)
  return -EINVAL;

 hwirq = fwspec->param[1];
 if ((hwirq + nr_irqs) > cb->max_crossbar_sources)
  return -EINVAL;

 for (i = 0; i < nr_irqs; i++) {
  int err = allocate_gic_irq(d, virq + i, hwirq + i);

  if (err)
   return err;

  irq_domain_set_hwirq_and_chip(d, virq + i, hwirq + i,
           &crossbar_chip, ((void*)0));
 }

 return 0;
}
