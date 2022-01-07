
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_gpio_pin {int dummy; } ;
struct hw_generic {int dummy; } ;
struct TYPE_3__ {int mux_select; int enable_output_from_mux; } ;
struct TYPE_4__ {TYPE_1__ generic_mux; } ;
struct gpio_config_data {TYPE_2__ config; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 int GENERIC_EN ;
 int GENERIC_SEL ;
 int GPIO_RESULT_INVALID_DATA ;
 int GPIO_RESULT_OK ;
 struct hw_generic* HW_GENERIC_FROM_BASE (struct hw_gpio_pin*) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int mux ;

__attribute__((used)) static enum gpio_result set_config(
 struct hw_gpio_pin *ptr,
 const struct gpio_config_data *config_data)
{
 struct hw_generic *generic = HW_GENERIC_FROM_BASE(ptr);

 if (!config_data)
  return GPIO_RESULT_INVALID_DATA;

 REG_UPDATE_2(mux,
  GENERIC_EN, config_data->config.generic_mux.enable_output_from_mux,
  GENERIC_SEL, config_data->config.generic_mux.mux_select);

 return GPIO_RESULT_OK;
}
