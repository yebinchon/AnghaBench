
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_sei {int dummy; } ;
struct irq_fwspec {int * param; } ;
struct irq_domain {struct mvebu_sei* host_data; } ;


 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,int ,int *,struct mvebu_sei*) ;
 int mvebu_sei_irq_chip ;

__attribute__((used)) static int mvebu_sei_domain_alloc(struct irq_domain *domain, unsigned int virq,
      unsigned int nr_irqs, void *arg)
{
 struct mvebu_sei *sei = domain->host_data;
 struct irq_fwspec *fwspec = arg;


 irq_domain_set_hwirq_and_chip(domain, virq, fwspec->param[0],
          &mvebu_sei_irq_chip, sei);

 return 0;
}
