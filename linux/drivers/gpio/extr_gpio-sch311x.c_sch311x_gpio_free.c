
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch311x_gpio_block {scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;


 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void sch311x_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);

 if (block->config_regs[offset] == 0)
  return;

 release_region(block->runtime_reg + block->config_regs[offset], 1);
}
