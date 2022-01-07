
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int dummy; } ;
struct irq_domain {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 unsigned int IRQ_TYPE_NONE ;
 int irq_map_generic_chip (struct irq_domain*,unsigned int,scalar_t__) ;
 int nvic_irq_domain_translate (struct irq_domain*,struct irq_fwspec*,scalar_t__*,unsigned int*) ;

__attribute__((used)) static int nvic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
    unsigned int nr_irqs, void *arg)
{
 int i, ret;
 irq_hw_number_t hwirq;
 unsigned int type = IRQ_TYPE_NONE;
 struct irq_fwspec *fwspec = arg;

 ret = nvic_irq_domain_translate(domain, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 for (i = 0; i < nr_irqs; i++)
  irq_map_generic_chip(domain, virq + i, hwirq + i);

 return 0;
}
