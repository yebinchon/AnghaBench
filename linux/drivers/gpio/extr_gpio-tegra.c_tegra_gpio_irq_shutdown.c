
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int gc; } ;
struct tegra_gpio_bank {struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;


 int gpiochip_unlock_as_irq (int *,unsigned int) ;
 struct tegra_gpio_bank* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void tegra_gpio_irq_shutdown(struct irq_data *d)
{
 struct tegra_gpio_bank *bank = irq_data_get_irq_chip_data(d);
 struct tegra_gpio_info *tgi = bank->tgi;
 unsigned int gpio = d->hwirq;

 gpiochip_unlock_as_irq(&tgi->gc, gpio);
}
