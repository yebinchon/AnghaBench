
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_gpio_pin {int opened; int mode; } ;
struct hw_gpio {int dummy; } ;


 struct hw_gpio* FROM_HW_GPIO_PIN (struct hw_gpio_pin*) ;
 int GPIO_MODE_UNKNOWN ;
 int restore_registers (struct hw_gpio*) ;

void dal_hw_gpio_close(
 struct hw_gpio_pin *ptr)
{
 struct hw_gpio *pin = FROM_HW_GPIO_PIN(ptr);

 restore_registers(pin);

 ptr->mode = GPIO_MODE_UNKNOWN;
 ptr->opened = 0;
}
