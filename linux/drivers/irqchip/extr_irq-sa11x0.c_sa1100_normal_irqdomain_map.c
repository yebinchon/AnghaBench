
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int sa1100_normal_chip ;

__attribute__((used)) static int sa1100_normal_irqdomain_map(struct irq_domain *d,
  unsigned int irq, irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(irq, &sa1100_normal_chip,
     handle_level_irq);

 return 0;
}
