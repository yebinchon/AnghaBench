
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct brcmstb_gpio_bank {int dummy; } ;


 int brcmstb_gpio_set_imask (struct brcmstb_gpio_bank*,int ,int) ;
 struct brcmstb_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void brcmstb_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct brcmstb_gpio_bank *bank = gpiochip_get_data(gc);

 brcmstb_gpio_set_imask(bank, d->hwirq, 1);
}
