
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_config_gpio {int pullupdown; int outputslewrate; int outputdriving; int inputcharacteristics; int direction; } ;


 int SMS_GPIO_DIRECTION_OUTPUT ;
 int SMS_GPIO_INPUTCHARACTERISTICS_NORMAL ;
 int SMS_GPIO_OUTPUTDRIVING_4mA ;
 int SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS ;
 int SMS_GPIO_PULLUPDOWN_NONE ;

__attribute__((used)) static inline void sms_gpio_assign_11xx_default_led_config(
  struct smscore_config_gpio *p_gpio_config) {
 p_gpio_config->direction = SMS_GPIO_DIRECTION_OUTPUT;
 p_gpio_config->inputcharacteristics =
  SMS_GPIO_INPUTCHARACTERISTICS_NORMAL;
 p_gpio_config->outputdriving = SMS_GPIO_OUTPUTDRIVING_4mA;
 p_gpio_config->outputslewrate = SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS;
 p_gpio_config->pullupdown = SMS_GPIO_PULLUPDOWN_NONE;
}
