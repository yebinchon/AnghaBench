
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v2m_data {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int gicv2m_unalloc_msi (struct v2m_data*,int ,unsigned int) ;
 struct v2m_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;

__attribute__((used)) static void gicv2m_irq_domain_free(struct irq_domain *domain,
       unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct v2m_data *v2m = irq_data_get_irq_chip_data(d);

 gicv2m_unalloc_msi(v2m, d->hwirq, nr_irqs);
 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
}
