
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct em_gio_priv* host_data; } ;
struct em_gio_priv {int irq_chip; } ;
typedef scalar_t__ irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct em_gio_priv*) ;
 int pr_debug (char*,int,unsigned int) ;

__attribute__((used)) static int em_gio_irq_domain_map(struct irq_domain *h, unsigned int irq,
     irq_hw_number_t hwirq)
{
 struct em_gio_priv *p = h->host_data;

 pr_debug("gio: map hw irq = %d, irq = %d\n", (int)hwirq, irq);

 irq_set_chip_data(irq, h->host_data);
 irq_set_chip_and_handler(irq, &p->irq_chip, handle_level_irq);
 return 0;
}
