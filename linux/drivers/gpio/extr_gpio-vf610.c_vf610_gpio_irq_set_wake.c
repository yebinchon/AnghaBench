
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vf610_gpio_port {int irq; } ;
struct irq_data {int dummy; } ;


 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 struct vf610_gpio_port* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int vf610_gpio_irq_set_wake(struct irq_data *d, u32 enable)
{
 struct vf610_gpio_port *port =
  gpiochip_get_data(irq_data_get_irq_chip_data(d));

 if (enable)
  enable_irq_wake(port->irq);
 else
  disable_irq_wake(port->irq);

 return 0;
}
