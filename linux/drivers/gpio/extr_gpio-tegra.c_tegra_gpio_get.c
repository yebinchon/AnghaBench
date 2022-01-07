
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (int ) ;
 int GPIO_BIT (unsigned int) ;
 int GPIO_IN (struct tegra_gpio_info*,unsigned int) ;
 int GPIO_OE (struct tegra_gpio_info*,unsigned int) ;
 int GPIO_OUT (struct tegra_gpio_info*,unsigned int) ;
 struct tegra_gpio_info* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int tegra_gpio_readl (struct tegra_gpio_info*,int ) ;

__attribute__((used)) static int tegra_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct tegra_gpio_info *tgi = gpiochip_get_data(chip);
 unsigned int bval = BIT(GPIO_BIT(offset));


 if (tegra_gpio_readl(tgi, GPIO_OE(tgi, offset)) & bval)
  return !!(tegra_gpio_readl(tgi, GPIO_OUT(tgi, offset)) & bval);

 return !!(tegra_gpio_readl(tgi, GPIO_IN(tgi, offset)) & bval);
}
