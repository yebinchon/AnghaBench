
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int NODMIS_PER_FRAME ;
 int __clear_bit (int,int ) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int odmis_bm ;
 int odmis_bm_lock ;
 int odmis_count ;
 int pr_err (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void odmi_irq_domain_free(struct irq_domain *domain,
     unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);

 if (d->hwirq >= odmis_count * NODMIS_PER_FRAME) {
  pr_err("Failed to teardown msi. Invalid hwirq %lu\n", d->hwirq);
  return;
 }

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);


 spin_lock(&odmis_bm_lock);
 __clear_bit(d->hwirq, odmis_bm);
 spin_unlock(&odmis_bm_lock);
}
