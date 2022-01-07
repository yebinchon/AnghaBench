
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvebu_sei {int dev; TYPE_2__* caps; } ;
struct irq_domain {struct mvebu_sei* host_data; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ cp_range; } ;


 int dev_err (int ,char*,scalar_t__) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mvebu_sei_cp_release_irq (struct mvebu_sei*,scalar_t__) ;

__attribute__((used)) static void mvebu_sei_cp_domain_free(struct irq_domain *domain,
         unsigned int virq, unsigned int nr_irqs)
{
 struct mvebu_sei *sei = domain->host_data;
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);

 if (nr_irqs != 1 || d->hwirq >= sei->caps->cp_range.size) {
  dev_err(sei->dev, "Invalid hwirq %lu\n", d->hwirq);
  return;
 }

 mvebu_sei_cp_release_irq(sei, d->hwirq);
 irq_domain_free_irqs_parent(domain, virq, 1);
}
