
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_icu_irq_data {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {struct mvebu_icu_irq_data* chip_data; } ;


 struct irq_data* irq_get_irq_data (unsigned int) ;
 int kfree (struct mvebu_icu_irq_data*) ;
 int platform_msi_domain_free (struct irq_domain*,unsigned int,unsigned int) ;

__attribute__((used)) static void
mvebu_icu_irq_domain_free(struct irq_domain *domain, unsigned int virq,
     unsigned int nr_irqs)
{
 struct irq_data *d = irq_get_irq_data(virq);
 struct mvebu_icu_irq_data *icu_irqd = d->chip_data;

 kfree(icu_irqd);

 platform_msi_domain_free(domain, virq, nr_irqs);
}
