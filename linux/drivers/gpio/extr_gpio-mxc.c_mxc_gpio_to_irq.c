
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_gpio_port {int domain; } ;
struct gpio_chip {int dummy; } ;


 struct mxc_gpio_port* gpiochip_get_data (struct gpio_chip*) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static int mxc_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct mxc_gpio_port *port = gpiochip_get_data(gc);

 return irq_find_mapping(port->domain, offset);
}
