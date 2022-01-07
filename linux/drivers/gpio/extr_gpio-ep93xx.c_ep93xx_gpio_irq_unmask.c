
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {int dummy; } ;


 int BIT (int) ;
 int ep93xx_gpio_port (struct gpio_chip*) ;
 int ep93xx_gpio_update_int_params (struct ep93xx_gpio*,int) ;
 int * gpio_int_unmasked ;
 struct ep93xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ep93xx_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ep93xx_gpio *epg = gpiochip_get_data(gc);
 int port = ep93xx_gpio_port(gc);

 gpio_int_unmasked[port] |= BIT(d->irq & 7);
 ep93xx_gpio_update_int_params(epg, port);
}
