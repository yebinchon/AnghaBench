
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hw_gpio_pin {int mode; } ;
struct hw_gpio {int dummy; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 struct hw_gpio* FROM_HW_GPIO_PIN (struct hw_gpio_pin const*) ;




 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_OK ;
 int REG_GET (int ,int ,int *) ;
 int Y ;
 int Y_reg ;

enum gpio_result dal_hw_gpio_get_value(
 const struct hw_gpio_pin *ptr,
 uint32_t *value)
{
 const struct hw_gpio *gpio = FROM_HW_GPIO_PIN(ptr);

 enum gpio_result result = GPIO_RESULT_OK;

 switch (ptr->mode) {
 case 129:
 case 128:
 case 130:
 case 131:
  REG_GET(Y_reg, Y, value);
  break;
 default:
  result = GPIO_RESULT_NON_SPECIFIC_ERROR;
 }

 return result;
}
