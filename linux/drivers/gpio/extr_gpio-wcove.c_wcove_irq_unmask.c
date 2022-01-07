
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int set_irq_mask; int update; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct gpio_chip {int dummy; } ;


 int UPDATE_IRQ_MASK ;
 scalar_t__ WCOVE_GPIO_NUM ;
 struct wcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void wcove_irq_unmask(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct wcove_gpio *wg = gpiochip_get_data(chip);

 if (data->hwirq >= WCOVE_GPIO_NUM)
  return;

 wg->set_irq_mask = 0;
 wg->update |= UPDATE_IRQ_MASK;
}
