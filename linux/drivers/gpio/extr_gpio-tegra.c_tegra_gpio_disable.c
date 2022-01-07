
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int dummy; } ;


 int GPIO_MSK_CNF (struct tegra_gpio_info*,unsigned int) ;
 int tegra_gpio_mask_write (struct tegra_gpio_info*,int ,unsigned int,int ) ;

__attribute__((used)) static void tegra_gpio_disable(struct tegra_gpio_info *tgi, unsigned int gpio)
{
 tegra_gpio_mask_write(tgi, GPIO_MSK_CNF(tgi, gpio), gpio, 0);
}
