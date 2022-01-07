
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;


 unsigned int ZYNQ_GPIO_DATA_LSW_OFFSET (unsigned int) ;
 unsigned int ZYNQ_GPIO_DATA_MSW_OFFSET (unsigned int) ;
 unsigned int ZYNQ_GPIO_MID_PIN_NUM ;
 int ZYNQ_GPIO_UPPER_MASK ;
 struct zynq_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int writel_relaxed (int,scalar_t__) ;
 int zynq_gpio_get_bank_pin (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ;

__attribute__((used)) static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
    int state)
{
 unsigned int reg_offset, bank_num, bank_pin_num;
 struct zynq_gpio *gpio = gpiochip_get_data(chip);

 zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio);

 if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {

  bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
  reg_offset = ZYNQ_GPIO_DATA_MSW_OFFSET(bank_num);
 } else {
  reg_offset = ZYNQ_GPIO_DATA_LSW_OFFSET(bank_num);
 }





 state = !!state;
 state = ~(1 << (bank_pin_num + ZYNQ_GPIO_MID_PIN_NUM)) &
  ((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);

 writel_relaxed(state, gpio->base_addr + reg_offset);
}
