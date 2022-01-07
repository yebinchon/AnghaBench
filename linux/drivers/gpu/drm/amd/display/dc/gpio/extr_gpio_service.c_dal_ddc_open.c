
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ en; } ;
struct hw_gpio {TYPE_3__ store; } ;
struct TYPE_7__ {int type; int data_en_bit_present; int clock_en_bit_present; } ;
struct TYPE_8__ {TYPE_1__ ddc; } ;
struct gpio_config_data {TYPE_2__ config; int type; } ;
struct ddc {TYPE_4__* pin_data; TYPE_4__* pin_clock; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;
typedef enum gpio_ddc_config_type { ____Placeholder_gpio_ddc_config_type } gpio_ddc_config_type ;
struct TYPE_10__ {int pin; } ;


 int BREAK_TO_DEBUGGER () ;
 struct hw_gpio* FROM_HW_GPIO_PIN (int ) ;
 int GPIO_CONFIG_TYPE_DDC ;
 int GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE ;
 int GPIO_MODE_INPUT ;
 int GPIO_RESULT_OK ;
 int dal_gpio_close (TYPE_4__*) ;
 int dal_gpio_open_ex (TYPE_4__*,int) ;
 int dal_gpio_set_config (TYPE_4__*,struct gpio_config_data*) ;

enum gpio_result dal_ddc_open(
 struct ddc *ddc,
 enum gpio_mode mode,
 enum gpio_ddc_config_type config_type)
{
 enum gpio_result result;

 struct gpio_config_data config_data;
 struct hw_gpio *hw_data;
 struct hw_gpio *hw_clock;

 result = dal_gpio_open_ex(ddc->pin_data, mode);

 if (result != GPIO_RESULT_OK) {
  BREAK_TO_DEBUGGER();
  return result;
 }

 result = dal_gpio_open_ex(ddc->pin_clock, mode);

 if (result != GPIO_RESULT_OK) {
  BREAK_TO_DEBUGGER();
  goto failure;
 }





 if (mode == GPIO_MODE_INPUT)


  config_data.type = GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE;
 else
  config_data.type = GPIO_CONFIG_TYPE_DDC;

 config_data.config.ddc.type = config_type;

 hw_data = FROM_HW_GPIO_PIN(ddc->pin_data->pin);
 hw_clock = FROM_HW_GPIO_PIN(ddc->pin_clock->pin);

 config_data.config.ddc.data_en_bit_present = hw_data->store.en != 0;
 config_data.config.ddc.clock_en_bit_present = hw_clock->store.en != 0;

 result = dal_gpio_set_config(ddc->pin_data, &config_data);

 if (result == GPIO_RESULT_OK)
  return result;

 BREAK_TO_DEBUGGER();

 dal_gpio_close(ddc->pin_clock);

failure:
 dal_gpio_close(ddc->pin_data);

 return result;
}
