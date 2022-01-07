
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;



void gic_irq_domain_free(struct irq_domain *d, unsigned int virq,
    unsigned int nr_irqs)
{
}
