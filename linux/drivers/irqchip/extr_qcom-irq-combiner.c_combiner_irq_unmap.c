
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int irq_domain_reset_irq_data (int ) ;
 int irq_get_irq_data (unsigned int) ;

__attribute__((used)) static void combiner_irq_unmap(struct irq_domain *domain, unsigned int irq)
{
 irq_domain_reset_irq_data(irq_get_irq_data(irq));
}
