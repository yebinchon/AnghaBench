
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UNIPHIER_GPIO_IRQ_EN ;

__attribute__((used)) static unsigned int uniphier_gpio_bank_to_reg(unsigned int bank)
{
 unsigned int reg;

 reg = (bank + 1) * 8;





 if (reg >= UNIPHIER_GPIO_IRQ_EN)
  reg += 0x10;

 return reg;
}
