
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgpio_instance {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ XGPIO_DATA_OFFSET ;
 struct xgpio_instance* gpiochip_get_data (struct gpio_chip*) ;
 int xgpio_offset (struct xgpio_instance*,unsigned int) ;
 int xgpio_readreg (scalar_t__) ;
 scalar_t__ xgpio_regoffset (struct xgpio_instance*,unsigned int) ;

__attribute__((used)) static int xgpio_get(struct gpio_chip *gc, unsigned int gpio)
{
 struct xgpio_instance *chip = gpiochip_get_data(gc);
 u32 val;

 val = xgpio_readreg(chip->regs + XGPIO_DATA_OFFSET +
       xgpio_regoffset(chip, gpio));

 return !!(val & BIT(xgpio_offset(chip, gpio)));
}
