
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int dummy; } ;
struct smscore_config_gpio {int dummy; } ;
typedef enum SMS_BOARD_EVENTS { ____Placeholder_SMS_BOARD_EVENTS } SMS_BOARD_EVENTS ;
 int pr_err (char*) ;
 int sms_gpio_assign_11xx_default_led_config (struct smscore_config_gpio*) ;

int sms_board_event(struct smscore_device_t *coredev,
      enum SMS_BOARD_EVENTS gevent)
{
 struct smscore_config_gpio my_gpio_config;

 sms_gpio_assign_11xx_default_led_config(&my_gpio_config);

 switch (gevent) {
 case 137:
  break;

 case 135:
  break;

 case 136:
  break;

 case 145:
  break;

 case 128:
  break;
 case 129:
  break;
 case 142:
  break;
 case 141:
  break;
 case 140:
  break;
 case 144:
  break;
 case 143:
  break;
 case 130:
  break;
 case 132:
  break;
 case 133:
  break;
 case 134:
  break;
 case 131:
  break;
 case 138:
  break;
 case 139:
  break;

 default:
  pr_err("Unknown SMS board event\n");
  break;
 }
 return 0;
}
