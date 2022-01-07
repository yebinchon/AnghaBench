
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct cdns_gpio_chip {scalar_t__ regs; } ;


 int BIT (int ) ;
 scalar_t__ CDNS_GPIO_IRQ_EN ;
 struct cdns_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int iowrite32 (int ,scalar_t__) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void cdns_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 struct cdns_gpio_chip *cgpio = gpiochip_get_data(chip);

 iowrite32(BIT(d->hwirq), cgpio->regs + CDNS_GPIO_IRQ_EN);
}
