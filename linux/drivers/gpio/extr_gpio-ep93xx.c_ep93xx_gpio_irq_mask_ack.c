
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {scalar_t__ base; } ;


 int BIT (int) ;
 scalar_t__ IRQ_TYPE_EDGE_BOTH ;
 scalar_t__* eoi_register_offset ;
 int ep93xx_gpio_port (struct gpio_chip*) ;
 int ep93xx_gpio_update_int_params (struct ep93xx_gpio*,int) ;
 int* gpio_int_type2 ;
 int* gpio_int_unmasked ;
 struct ep93xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_get_trigger_type (struct irq_data*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ep93xx_gpio_irq_mask_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ep93xx_gpio *epg = gpiochip_get_data(gc);
 int port = ep93xx_gpio_port(gc);
 int port_mask = BIT(d->irq & 7);

 if (irqd_get_trigger_type(d) == IRQ_TYPE_EDGE_BOTH)
  gpio_int_type2[port] ^= port_mask;

 gpio_int_unmasked[port] &= ~port_mask;
 ep93xx_gpio_update_int_params(epg, port);

 writeb(port_mask, epg->base + eoi_register_offset[port]);
}
