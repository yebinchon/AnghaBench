
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_scfg_msi {int irqs_num; int lock; int used; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int __clear_bit (int,int ) ;
 struct ls_scfg_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int pr_err (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ls_scfg_msi_domain_irq_free(struct irq_domain *domain,
       unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct ls_scfg_msi *msi_data = irq_data_get_irq_chip_data(d);
 int pos;

 pos = d->hwirq;
 if (pos < 0 || pos >= msi_data->irqs_num) {
  pr_err("failed to teardown msi. Invalid hwirq %d\n", pos);
  return;
 }

 spin_lock(&msi_data->lock);
 __clear_bit(pos, msi_data->used);
 spin_unlock(&msi_data->lock);
}
