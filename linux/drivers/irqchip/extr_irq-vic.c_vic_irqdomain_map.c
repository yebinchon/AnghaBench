
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic_device {int valid_sources; int base; } ;
struct irq_domain {struct vic_device* host_data; } ;
typedef int irq_hw_number_t ;


 int EPERM ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_probe (unsigned int) ;
 int vic_chip ;

__attribute__((used)) static int vic_irqdomain_map(struct irq_domain *d, unsigned int irq,
        irq_hw_number_t hwirq)
{
 struct vic_device *v = d->host_data;


 if (!(v->valid_sources & (1 << hwirq)))
  return -EPERM;
 irq_set_chip_and_handler(irq, &vic_chip, handle_level_irq);
 irq_set_chip_data(irq, v->base);
 irq_set_probe(irq);
 return 0;
}
