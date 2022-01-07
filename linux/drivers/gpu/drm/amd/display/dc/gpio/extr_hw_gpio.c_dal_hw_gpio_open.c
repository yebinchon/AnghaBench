
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_gpio_pin {int opened; } ;
struct hw_gpio {int dummy; } ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;


 struct hw_gpio* FROM_HW_GPIO_PIN (struct hw_gpio_pin*) ;
 scalar_t__ GPIO_RESULT_OK ;
 scalar_t__ dal_hw_gpio_config_mode (struct hw_gpio*,int) ;
 int store_registers (struct hw_gpio*) ;

bool dal_hw_gpio_open(
 struct hw_gpio_pin *ptr,
 enum gpio_mode mode)
{
 struct hw_gpio *pin = FROM_HW_GPIO_PIN(ptr);

 store_registers(pin);

 ptr->opened = (dal_hw_gpio_config_mode(pin, mode) == GPIO_RESULT_OK);

 return ptr->opened;
}
