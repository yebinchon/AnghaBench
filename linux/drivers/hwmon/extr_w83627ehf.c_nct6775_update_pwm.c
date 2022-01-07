
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int pwm_num; int* pwm_mode; int* pwm_enable; int* tolerance; int * REG_PWM; void** pwm; } ;


 int * NCT6775_REG_FAN_MODE ;
 int* W83627EHF_PWM_MODE_SHIFT ;
 int * W83627EHF_REG_PWM_ENABLE ;
 void* w83627ehf_read_value (struct w83627ehf_data*,int ) ;

__attribute__((used)) static void nct6775_update_pwm(struct w83627ehf_data *data)
{
 int i;
 int pwmcfg, fanmodecfg;

 for (i = 0; i < data->pwm_num; i++) {
  pwmcfg = w83627ehf_read_value(data,
           W83627EHF_REG_PWM_ENABLE[i]);
  fanmodecfg = w83627ehf_read_value(data,
        NCT6775_REG_FAN_MODE[i]);
  data->pwm_mode[i] =
    ((pwmcfg >> W83627EHF_PWM_MODE_SHIFT[i]) & 1) ? 0 : 1;
  data->pwm_enable[i] = ((fanmodecfg >> 4) & 7) + 1;
  data->tolerance[i] = fanmodecfg & 0x0f;
  data->pwm[i] = w83627ehf_read_value(data, data->REG_PWM[i]);
 }
}
