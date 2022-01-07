
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct gpio_bank {int dummy; } ;


 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static inline struct gpio_bank *omap_irq_data_get_bank(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 return gpiochip_get_data(chip);
}
