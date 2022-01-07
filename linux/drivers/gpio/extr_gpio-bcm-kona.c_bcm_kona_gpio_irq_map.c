
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int bcm_gpio_irq_chip ;
 int gpio_lock_class ;
 int gpio_request_class ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int bcm_kona_gpio_irq_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hwirq)
{
 int ret;

 ret = irq_set_chip_data(irq, d->host_data);
 if (ret < 0)
  return ret;
 irq_set_lockdep_class(irq, &gpio_lock_class, &gpio_request_class);
 irq_set_chip_and_handler(irq, &bcm_gpio_irq_chip, handle_simple_irq);
 irq_set_noprobe(irq);

 return 0;
}
