
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smscore_device_t {int dummy; } ;
struct smscore_config_gpio {int outputdriving; int outputslewrate; int inputcharacteristics; int pullupdown; int direction; } ;


 int EINVAL ;
 int SMS_GPIO_DIRECTION_OUTPUT ;
 int SMS_GPIO_INPUTCHARACTERISTICS_NORMAL ;
 int SMS_GPIO_OUTPUTDRIVING_S_4mA ;
 int SMS_GPIO_OUTPUT_SLEW_RATE_FAST ;
 int SMS_GPIO_PULLUPDOWN_NONE ;
 int smscore_configure_gpio (struct smscore_device_t*,int,struct smscore_config_gpio*) ;
 int smscore_set_gpio (struct smscore_device_t*,int,int) ;

__attribute__((used)) static int sms_set_gpio(struct smscore_device_t *coredev, int pin, int enable)
{
 int lvl, ret;
 u32 gpio;
 struct smscore_config_gpio gpioconfig = {
  .direction = SMS_GPIO_DIRECTION_OUTPUT,
  .pullupdown = SMS_GPIO_PULLUPDOWN_NONE,
  .inputcharacteristics = SMS_GPIO_INPUTCHARACTERISTICS_NORMAL,
  .outputslewrate = SMS_GPIO_OUTPUT_SLEW_RATE_FAST,
  .outputdriving = SMS_GPIO_OUTPUTDRIVING_S_4mA,
 };

 if (pin == 0)
  return -EINVAL;

 if (pin < 0) {

  gpio = pin * -1;
  lvl = enable ? 0 : 1;
 } else {
  gpio = pin;
  lvl = enable ? 1 : 0;
 }

 ret = smscore_configure_gpio(coredev, gpio, &gpioconfig);
 if (ret < 0)
  return ret;

 return smscore_set_gpio(coredev, gpio, lvl);
}
