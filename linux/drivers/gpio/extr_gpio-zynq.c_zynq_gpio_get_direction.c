
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_DIRM_OFFSET (unsigned int) ;
 struct zynq_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;
 int zynq_gpio_get_bank_pin (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ;

__attribute__((used)) static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
{
 u32 reg;
 unsigned int bank_num, bank_pin_num;
 struct zynq_gpio *gpio = gpiochip_get_data(chip);

 zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio);

 reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));

 return !(reg & BIT(bank_pin_num));
}
