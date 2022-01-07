
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hw_gpio_pin {int mode; } ;
struct hw_gpio {int dummy; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 int A ;
 int A_reg ;
 int EN ;
 int EN_reg ;
 struct hw_gpio* FROM_HW_GPIO_PIN (struct hw_gpio_pin const*) ;


 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_OK ;
 int REG_UPDATE (int ,int ,int ) ;

enum gpio_result dal_hw_gpio_set_value(
 const struct hw_gpio_pin *ptr,
 uint32_t value)
{
 struct hw_gpio *gpio = FROM_HW_GPIO_PIN(ptr);





 switch (ptr->mode) {
 case 128:
  REG_UPDATE(A_reg, A, value);
  return GPIO_RESULT_OK;
 case 129:




  REG_UPDATE(EN_reg, EN, ~value);
  return GPIO_RESULT_OK;
 default:
  return GPIO_RESULT_NON_SPECIFIC_ERROR;
 }
}
