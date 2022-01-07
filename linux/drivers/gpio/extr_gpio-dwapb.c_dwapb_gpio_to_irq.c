
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dwapb_gpio_port {struct dwapb_gpio* gpio; } ;
struct dwapb_gpio {int domain; } ;


 struct dwapb_gpio_port* gpiochip_get_data (struct gpio_chip*) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static int dwapb_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct dwapb_gpio_port *port = gpiochip_get_data(gc);
 struct dwapb_gpio *gpio = port->gpio;

 return irq_find_mapping(gpio->domain, offset);
}
