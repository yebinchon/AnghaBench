
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_gpio {int irq_lock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void stmpe_gpio_irq_lock(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(gc);

 mutex_lock(&stmpe_gpio->irq_lock);
}
