
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct irq_chip_generic {struct dwapb_gpio* private; } ;
struct gpio_chip {int dummy; } ;
struct dwapb_gpio {TYPE_1__* ports; } ;
struct TYPE_2__ {struct gpio_chip gc; } ;


 int gpiochip_unlock_as_irq (struct gpio_chip*,int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void dwapb_irq_relres(struct irq_data *d)
{
 struct irq_chip_generic *igc = irq_data_get_irq_chip_data(d);
 struct dwapb_gpio *gpio = igc->private;
 struct gpio_chip *gc = &gpio->ports[0].gc;

 gpiochip_unlock_as_irq(gc, irqd_to_hwirq(d));
}
