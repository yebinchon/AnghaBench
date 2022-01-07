
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct gpio_chip {int (* get ) (struct gpio_chip*,int) ;int (* direction_input ) (struct gpio_chip*,int) ;} ;
struct ep93xx_gpio {int dummy; } ;
typedef int irq_flow_handler_t ;


 int BIT (int) ;
 int EINVAL ;





 int ep93xx_gpio_port (struct gpio_chip*) ;
 int ep93xx_gpio_update_int_params (struct ep93xx_gpio*,int) ;
 int* gpio_int_enabled ;
 int* gpio_int_type1 ;
 int* gpio_int_type2 ;
 struct ep93xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int stub1 (struct gpio_chip*,int) ;
 int stub2 (struct gpio_chip*,int) ;

__attribute__((used)) static int ep93xx_gpio_irq_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ep93xx_gpio *epg = gpiochip_get_data(gc);
 int port = ep93xx_gpio_port(gc);
 int offset = d->irq & 7;
 int port_mask = BIT(offset);
 irq_flow_handler_t handler;

 gc->direction_input(gc, offset);

 switch (type) {
 case 130:
  gpio_int_type1[port] |= port_mask;
  gpio_int_type2[port] |= port_mask;
  handler = handle_edge_irq;
  break;
 case 131:
  gpio_int_type1[port] |= port_mask;
  gpio_int_type2[port] &= ~port_mask;
  handler = handle_edge_irq;
  break;
 case 129:
  gpio_int_type1[port] &= ~port_mask;
  gpio_int_type2[port] |= port_mask;
  handler = handle_level_irq;
  break;
 case 128:
  gpio_int_type1[port] &= ~port_mask;
  gpio_int_type2[port] &= ~port_mask;
  handler = handle_level_irq;
  break;
 case 132:
  gpio_int_type1[port] |= port_mask;

  if (gc->get(gc, offset))
   gpio_int_type2[port] &= ~port_mask;
  else
   gpio_int_type2[port] |= port_mask;
  handler = handle_edge_irq;
  break;
 default:
  return -EINVAL;
 }

 irq_set_handler_locked(d, handler);

 gpio_int_enabled[port] |= port_mask;

 ep93xx_gpio_update_int_params(epg, port);

 return 0;
}
