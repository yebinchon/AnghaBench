
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_gpio_info {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 int EINVAL ;
 int GPIO_BIT (unsigned int) ;
 int GPIO_CNF (struct tegra_gpio_info*,unsigned int) ;
 int GPIO_OE (struct tegra_gpio_info*,unsigned int) ;
 struct tegra_gpio_info* gpiochip_get_data (struct gpio_chip*) ;
 int tegra_gpio_readl (struct tegra_gpio_info*,int ) ;

__attribute__((used)) static int tegra_gpio_get_direction(struct gpio_chip *chip,
        unsigned int offset)
{
 struct tegra_gpio_info *tgi = gpiochip_get_data(chip);
 u32 pin_mask = BIT(GPIO_BIT(offset));
 u32 cnf, oe;

 cnf = tegra_gpio_readl(tgi, GPIO_CNF(tgi, offset));
 if (!(cnf & pin_mask))
  return -EINVAL;

 oe = tegra_gpio_readl(tgi, GPIO_OE(tgi, offset));

 return !(oe & pin_mask);
}
