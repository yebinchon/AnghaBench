
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_gicp {scalar_t__ spi_cnt; int spi_lock; int spi_bitmap; int dev; } ;
struct irq_domain {struct mvebu_gicp* host_data; } ;
struct irq_data {scalar_t__ hwirq; } ;


 int __clear_bit (scalar_t__,int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gicp_irq_domain_free(struct irq_domain *domain,
     unsigned int virq, unsigned int nr_irqs)
{
 struct mvebu_gicp *gicp = domain->host_data;
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);

 if (d->hwirq >= gicp->spi_cnt) {
  dev_err(gicp->dev, "Invalid hwirq %lu\n", d->hwirq);
  return;
 }

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);

 spin_lock(&gicp->spi_lock);
 __clear_bit(d->hwirq, gicp->spi_bitmap);
 spin_unlock(&gicp->spi_lock);
}
