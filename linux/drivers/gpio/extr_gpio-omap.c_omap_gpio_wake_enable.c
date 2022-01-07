
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_bank {int irq; } ;


 int irq_set_irq_wake (int ,unsigned int) ;
 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;

__attribute__((used)) static int omap_gpio_wake_enable(struct irq_data *d, unsigned int enable)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(d);

 return irq_set_irq_wake(bank->irq, enable);
}
