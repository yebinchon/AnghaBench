
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;


 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int irq_domain_reset_irq_data (struct irq_data*) ;

__attribute__((used)) static void ti_sci_inta_irq_domain_free(struct irq_domain *domain,
     unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *data = irq_domain_get_irq_data(domain, virq);

 irq_domain_reset_irq_data(data);
}
