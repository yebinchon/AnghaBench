
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;
struct dwapb_gpio_port {struct gpio_chip gc; } ;
struct dwapb_gpio {int * domain; struct dwapb_gpio_port* ports; } ;
typedef unsigned int irq_hw_number_t ;


 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int *) ;
 int irq_find_mapping (int *,unsigned int) ;

__attribute__((used)) static void dwapb_irq_teardown(struct dwapb_gpio *gpio)
{
 struct dwapb_gpio_port *port = &gpio->ports[0];
 struct gpio_chip *gc = &port->gc;
 unsigned int ngpio = gc->ngpio;
 irq_hw_number_t hwirq;

 if (!gpio->domain)
  return;

 for (hwirq = 0 ; hwirq < ngpio ; hwirq++)
  irq_dispose_mapping(irq_find_mapping(gpio->domain, hwirq));

 irq_domain_remove(gpio->domain);
 gpio->domain = ((void*)0);
}
