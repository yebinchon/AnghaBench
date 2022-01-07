
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int intel_free_irq_resources (struct irq_domain*,unsigned int,unsigned int) ;
 int irq_domain_free_irqs_common (struct irq_domain*,unsigned int,unsigned int) ;

__attribute__((used)) static void intel_irq_remapping_free(struct irq_domain *domain,
         unsigned int virq, unsigned int nr_irqs)
{
 intel_free_irq_resources(domain, virq, nr_irqs);
 irq_domain_free_irqs_common(domain, virq, nr_irqs);
}
