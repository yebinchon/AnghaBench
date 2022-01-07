
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_gpio {int irq; } ;
struct irq_data {int dummy; } ;


 struct zynq_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int zynq_gpio_set_wake(struct irq_data *data, unsigned int on)
{
 struct zynq_gpio *gpio =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));

 irq_set_irq_wake(gpio->irq, on);

 return 0;
}
