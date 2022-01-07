
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {scalar_t__ type; int fan_main_ctrl; int* pwm_ctrl; scalar_t__* pwm_duty; } ;


 int BIT (int) ;
 scalar_t__ it8603 ;
 scalar_t__ pwm_to_reg (struct it87_data const*,int) ;

__attribute__((used)) static int pwm_mode(const struct it87_data *data, int nr)
{
 if (data->type != it8603 && nr < 3 && !(data->fan_main_ctrl & BIT(nr)))
  return 0;
 if (data->pwm_ctrl[nr] & 0x80)
  return 2;
 if ((data->type == it8603 || nr >= 3) &&
     data->pwm_duty[nr] == pwm_to_reg(data, 0xff))
  return 0;

 return 1;
}
