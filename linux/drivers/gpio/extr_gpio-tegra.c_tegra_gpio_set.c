
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_MSK_OUT (struct tegra_gpio_info*,unsigned int) ;
 struct tegra_gpio_info* gpiochip_get_data (struct gpio_chip*) ;
 int tegra_gpio_mask_write (struct tegra_gpio_info*,int ,unsigned int,int) ;

__attribute__((used)) static void tegra_gpio_set(struct gpio_chip *chip, unsigned int offset,
      int value)
{
 struct tegra_gpio_info *tgi = gpiochip_get_data(chip);

 tegra_gpio_mask_write(tgi, GPIO_MSK_OUT(tgi, offset), offset, value);
}
