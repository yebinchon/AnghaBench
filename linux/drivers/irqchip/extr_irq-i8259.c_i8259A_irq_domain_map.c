
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int i8259A_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_probe (unsigned int) ;

__attribute__((used)) static int i8259A_irq_domain_map(struct irq_domain *d, unsigned int virq,
     irq_hw_number_t hw)
{
 irq_set_chip_and_handler(virq, &i8259A_chip, handle_level_irq);
 irq_set_probe(virq);
 return 0;
}
