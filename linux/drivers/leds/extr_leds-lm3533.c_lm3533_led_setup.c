
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533_led_platform_data {int pwm; int max_current; } ;
struct lm3533_led {int cb; } ;


 int lm3533_ctrlbank_set_max_current (int *,int ) ;
 int lm3533_ctrlbank_set_pwm (int *,int ) ;

__attribute__((used)) static int lm3533_led_setup(struct lm3533_led *led,
     struct lm3533_led_platform_data *pdata)
{
 int ret;

 ret = lm3533_ctrlbank_set_max_current(&led->cb, pdata->max_current);
 if (ret)
  return ret;

 return lm3533_ctrlbank_set_pwm(&led->cb, pdata->pwm);
}
