
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_gpio_port {int irq; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct mxs_gpio_port* private; } ;


 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int mxs_gpio_set_wake_irq(struct irq_data *d, unsigned int enable)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct mxs_gpio_port *port = gc->private;

 if (enable)
  enable_irq_wake(port->irq);
 else
  disable_irq_wake(port->irq);

 return 0;
}
