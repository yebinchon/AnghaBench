
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct fpga_irq_data* host_data; } ;
struct fpga_irq_data {int valid; int chip; } ;
typedef int irq_hw_number_t ;


 int BIT (int ) ;
 int EPERM ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct fpga_irq_data*) ;
 int irq_set_probe (unsigned int) ;

__attribute__((used)) static int fpga_irqdomain_map(struct irq_domain *d, unsigned int irq,
  irq_hw_number_t hwirq)
{
 struct fpga_irq_data *f = d->host_data;


 if (!(f->valid & BIT(hwirq)))
  return -EPERM;
 irq_set_chip_data(irq, f);
 irq_set_chip_and_handler(irq, &f->chip,
    handle_level_irq);
 irq_set_probe(irq);
 return 0;
}
