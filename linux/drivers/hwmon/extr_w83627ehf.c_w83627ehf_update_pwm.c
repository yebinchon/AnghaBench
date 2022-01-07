
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int pwm_num; int has_fan; int* pwm_mode; int* pwm_enable; int* tolerance; int * REG_PWM; void** pwm; } ;


 int* W83627EHF_PWM_ENABLE_SHIFT ;
 int* W83627EHF_PWM_MODE_SHIFT ;
 int * W83627EHF_REG_PWM_ENABLE ;
 int * W83627EHF_REG_TOLERANCE ;
 void* w83627ehf_read_value (struct w83627ehf_data*,int ) ;

__attribute__((used)) static void w83627ehf_update_pwm(struct w83627ehf_data *data)
{
 int i;
 int pwmcfg = 0, tolerance = 0;

 for (i = 0; i < data->pwm_num; i++) {
  if (!(data->has_fan & (1 << i)))
   continue;


  if (i != 1) {
   pwmcfg = w83627ehf_read_value(data,
     W83627EHF_REG_PWM_ENABLE[i]);
   tolerance = w83627ehf_read_value(data,
     W83627EHF_REG_TOLERANCE[i]);
  }
  data->pwm_mode[i] =
   ((pwmcfg >> W83627EHF_PWM_MODE_SHIFT[i]) & 1) ? 0 : 1;
  data->pwm_enable[i] = ((pwmcfg >> W83627EHF_PWM_ENABLE_SHIFT[i])
           & 3) + 1;
  data->pwm[i] = w83627ehf_read_value(data, data->REG_PWM[i]);

  data->tolerance[i] = (tolerance >> (i == 1 ? 4 : 0)) & 0x0f;
 }
}
