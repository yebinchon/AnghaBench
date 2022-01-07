
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int fwnode; } ;
struct irq_domain {TYPE_1__* parent; int host_data; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int fwnode; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,unsigned int,struct irq_fwspec*) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,int ,int *,int ) ;
 int mtk_cirq_chip ;
 int mtk_cirq_domain_translate (struct irq_domain*,struct irq_fwspec*,int *,unsigned int*) ;

__attribute__((used)) static int mtk_cirq_domain_alloc(struct irq_domain *domain, unsigned int virq,
     unsigned int nr_irqs, void *arg)
{
 int ret;
 irq_hw_number_t hwirq;
 unsigned int type;
 struct irq_fwspec *fwspec = arg;
 struct irq_fwspec parent_fwspec = *fwspec;

 ret = mtk_cirq_domain_translate(domain, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 if (WARN_ON(nr_irqs != 1))
  return -EINVAL;

 irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
          &mtk_cirq_chip,
          domain->host_data);

 parent_fwspec.fwnode = domain->parent->fwnode;
 return irq_domain_alloc_irqs_parent(domain, virq, nr_irqs,
         &parent_fwspec);
}
