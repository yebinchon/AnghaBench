
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 int MSIC_GPIO_DIN_MASK ;
 int intel_msic_reg_read (int,int*) ;
 int msic_gpio_to_ireg (unsigned int) ;

__attribute__((used)) static int msic_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 u8 r;
 int ret;
 int reg;

 reg = msic_gpio_to_ireg(offset);
 if (reg < 0)
  return reg;

 ret = intel_msic_reg_read(reg, &r);
 if (ret < 0)
  return ret;

 return !!(r & MSIC_GPIO_DIN_MASK);
}
