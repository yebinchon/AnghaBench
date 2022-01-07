
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {int irq_domain; } ;
struct gpio_chip {int dummy; } ;


 struct tegra_gpio_info* gpiochip_get_data (struct gpio_chip*) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static int tegra_gpio_to_irq(struct gpio_chip *chip, unsigned int offset)
{
 struct tegra_gpio_info *tgi = gpiochip_get_data(chip);

 return irq_find_mapping(tgi->irq_domain, offset);
}
