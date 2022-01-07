
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdc321x_gpio {int* data_reg; int reg1_data_base; int reg2_data_base; int sb_pdev; } ;
struct gpio_chip {int dummy; } ;


 struct rdc321x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void rdc_gpio_set_value_impl(struct gpio_chip *chip,
    unsigned gpio, int value)
{
 struct rdc321x_gpio *gpch;
 int reg = (gpio < 32) ? 0 : 1;

 gpch = gpiochip_get_data(chip);

 if (value)
  gpch->data_reg[reg] |= 1 << (gpio & 0x1f);
 else
  gpch->data_reg[reg] &= ~(1 << (gpio & 0x1f));

 pci_write_config_dword(gpch->sb_pdev,
   reg ? gpch->reg2_data_base : gpch->reg1_data_base,
   gpch->data_reg[reg]);
}
