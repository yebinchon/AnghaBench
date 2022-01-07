
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int dummy; } ;
struct tegra_gpio_bank {struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;


 int GPIO_BIT (unsigned int) ;
 int GPIO_INT_CLR (struct tegra_gpio_info*,unsigned int) ;
 struct tegra_gpio_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int tegra_gpio_writel (struct tegra_gpio_info*,int,int ) ;

__attribute__((used)) static void tegra_gpio_irq_ack(struct irq_data *d)
{
 struct tegra_gpio_bank *bank = irq_data_get_irq_chip_data(d);
 struct tegra_gpio_info *tgi = bank->tgi;
 unsigned int gpio = d->hwirq;

 tegra_gpio_writel(tgi, 1 << GPIO_BIT(gpio), GPIO_INT_CLR(tgi, gpio));
}
