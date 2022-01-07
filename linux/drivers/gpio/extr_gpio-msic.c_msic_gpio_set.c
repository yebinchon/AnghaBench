
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int MSIC_GPIO_DOUT_MASK ;
 int intel_msic_reg_update (int,int,int ) ;
 int msic_gpio_to_oreg (unsigned int) ;

__attribute__((used)) static void msic_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 int reg;

 reg = msic_gpio_to_oreg(offset);
 if (reg < 0)
  return;

 intel_msic_reg_update(reg, !!value , MSIC_GPIO_DOUT_MASK);
}
