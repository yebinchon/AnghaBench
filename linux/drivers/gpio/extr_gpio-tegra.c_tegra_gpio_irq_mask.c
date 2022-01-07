
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int dummy; } ;
struct tegra_gpio_bank {struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;


 int GPIO_MSK_INT_ENB (struct tegra_gpio_info*,unsigned int) ;
 struct tegra_gpio_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int tegra_gpio_mask_write (struct tegra_gpio_info*,int ,unsigned int,int ) ;

__attribute__((used)) static void tegra_gpio_irq_mask(struct irq_data *d)
{
 struct tegra_gpio_bank *bank = irq_data_get_irq_chip_data(d);
 struct tegra_gpio_info *tgi = bank->tgi;
 unsigned int gpio = d->hwirq;

 tegra_gpio_mask_write(tgi, GPIO_MSK_INT_ENB(tgi, gpio), gpio, 0);
}
