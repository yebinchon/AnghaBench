
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_gpio_chip {int dummy; } ;
struct irq_domain {struct sa1100_gpio_chip* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct sa1100_gpio_chip*) ;
 int irq_set_probe (unsigned int) ;
 int sa1100_gpio_irq_chip ;

__attribute__((used)) static int sa1100_gpio_irqdomain_map(struct irq_domain *d,
  unsigned int irq, irq_hw_number_t hwirq)
{
 struct sa1100_gpio_chip *sgc = d->host_data;

 irq_set_chip_data(irq, sgc);
 irq_set_chip_and_handler(irq, &sa1100_gpio_irq_chip, handle_edge_irq);
 irq_set_probe(irq);

 return 0;
}
