
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9052_gpio {int da9052; } ;


 scalar_t__ DA9052_GPIO_0_1_REG ;
 int DA9052_GPIO_EVEN_PORT_MODE ;
 int DA9052_GPIO_EVEN_PORT_PIN ;
 unsigned int DA9052_GPIO_MAX_PORTS_PER_REGISTER ;
 int DA9052_GPIO_ODD_PORT_MODE ;
 int DA9052_GPIO_ODD_PORT_PIN ;
 int DA9052_GPIO_SHIFT_COUNT (unsigned int) ;


 scalar_t__ DA9052_STATUS_C_REG ;
 scalar_t__ DA9052_STATUS_D_REG ;
 int EINVAL ;
 scalar_t__ da9052_gpio_port_odd (unsigned int) ;
 int da9052_reg_read (int ,scalar_t__) ;
 struct da9052_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int da9052_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct da9052_gpio *gpio = gpiochip_get_data(gc);
 int da9052_port_direction = 0;
 int ret;

 ret = da9052_reg_read(gpio->da9052,
         DA9052_GPIO_0_1_REG + (offset >> 1));
 if (ret < 0)
  return ret;

 if (da9052_gpio_port_odd(offset)) {
  da9052_port_direction = ret & DA9052_GPIO_ODD_PORT_PIN;
  da9052_port_direction >>= 4;
 } else {
  da9052_port_direction = ret & DA9052_GPIO_EVEN_PORT_PIN;
 }

 switch (da9052_port_direction) {
 case 129:
  if (offset < DA9052_GPIO_MAX_PORTS_PER_REGISTER)
   ret = da9052_reg_read(gpio->da9052,
           DA9052_STATUS_C_REG);
  else
   ret = da9052_reg_read(gpio->da9052,
           DA9052_STATUS_D_REG);
  if (ret < 0)
   return ret;
  return !!(ret & (1 << DA9052_GPIO_SHIFT_COUNT(offset)));
 case 128:
  if (da9052_gpio_port_odd(offset))
   return !!(ret & DA9052_GPIO_ODD_PORT_MODE);
  else
   return !!(ret & DA9052_GPIO_EVEN_PORT_MODE);
 default:
  return -EINVAL;
 }
}
