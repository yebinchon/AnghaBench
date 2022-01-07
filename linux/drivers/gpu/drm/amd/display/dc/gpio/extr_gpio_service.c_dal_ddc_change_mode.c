
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc {int pin_data; int pin_clock; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;


 int GPIO_RESULT_OK ;
 int dal_gpio_change_mode (int ,int) ;
 int dal_gpio_get_mode (int ) ;

enum gpio_result dal_ddc_change_mode(
 struct ddc *ddc,
 enum gpio_mode mode)
{
 enum gpio_result result;

 enum gpio_mode original_mode =
  dal_gpio_get_mode(ddc->pin_data);

 result = dal_gpio_change_mode(ddc->pin_data, mode);






 if (result != GPIO_RESULT_OK)
  goto failure;

 result = dal_gpio_change_mode(ddc->pin_clock, mode);

 if (result == GPIO_RESULT_OK)
  return result;

 dal_gpio_change_mode(ddc->pin_clock, original_mode);

failure:
 dal_gpio_change_mode(ddc->pin_data, original_mode);

 return result;
}
