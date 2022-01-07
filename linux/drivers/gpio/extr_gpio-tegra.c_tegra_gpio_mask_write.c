
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_gpio_info {int dummy; } ;


 int GPIO_BIT (unsigned int) ;
 int tegra_gpio_writel (struct tegra_gpio_info*,int,int) ;

__attribute__((used)) static void tegra_gpio_mask_write(struct tegra_gpio_info *tgi, u32 reg,
      unsigned int gpio, u32 value)
{
 u32 val;

 val = 0x100 << GPIO_BIT(gpio);
 if (value)
  val |= 1 << GPIO_BIT(gpio);
 tegra_gpio_writel(tgi, val, reg);
}
