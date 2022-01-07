
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nct6775_data {int pwm_num; int has_pwm; int** fan_time; int* target_temp; scalar_t__* pwm_enable; int target_temp_mask; int* target_speed; int auto_pwm_num; int** auto_pwm; int** auto_temp; int kind; int CRITICAL_PWM_ENABLE_MASK; int * REG_CRITICAL_PWM; int * REG_CRITICAL_PWM_ENABLE; int * REG_CRITICAL_TEMP; int * REG_TOLERANCE_H; int * REG_TARGET; int ** REG_FAN_TIME; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int**) ;
 int BIT (int) ;
 int NCT6775_AUTO_PWM (struct nct6775_data*,int,int) ;
 int NCT6775_AUTO_TEMP (struct nct6775_data*,int,int) ;
 int * NCT6775_REG_CRITICAL_ENAB ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;



 int nct6775_read_value (struct nct6775_data*,int ) ;
 scalar_t__ speed_cruise ;
 scalar_t__ thermal_cruise ;

__attribute__((used)) static void nct6775_update_pwm_limits(struct device *dev)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 int i, j;
 u8 reg;
 u16 reg_t;

 for (i = 0; i < data->pwm_num; i++) {
  if (!(data->has_pwm & BIT(i)))
   continue;

  for (j = 0; j < ARRAY_SIZE(data->fan_time); j++) {
   data->fan_time[j][i] =
     nct6775_read_value(data, data->REG_FAN_TIME[j][i]);
  }

  reg_t = nct6775_read_value(data, data->REG_TARGET[i]);

  if (!data->target_temp[i] ||
      data->pwm_enable[i] == thermal_cruise)
   data->target_temp[i] = reg_t & data->target_temp_mask;
  if (!data->target_speed[i] ||
      data->pwm_enable[i] == speed_cruise) {
   if (data->REG_TOLERANCE_H) {
    reg_t |= (nct6775_read_value(data,
     data->REG_TOLERANCE_H[i]) & 0x0f) << 8;
   }
   data->target_speed[i] = reg_t;
  }

  for (j = 0; j < data->auto_pwm_num; j++) {
   data->auto_pwm[i][j] =
     nct6775_read_value(data,
          NCT6775_AUTO_PWM(data, i, j));
   data->auto_temp[i][j] =
     nct6775_read_value(data,
          NCT6775_AUTO_TEMP(data, i, j));
  }


  data->auto_temp[i][data->auto_pwm_num] =
   nct6775_read_value(data, data->REG_CRITICAL_TEMP[i]);

  switch (data->kind) {
  case 137:
   reg = nct6775_read_value(data,
       NCT6775_REG_CRITICAL_ENAB[i]);
   data->auto_pwm[i][data->auto_pwm_num] =
      (reg & 0x02) ? 0xff : 0x00;
   break;
  case 136:
   data->auto_pwm[i][data->auto_pwm_num] = 0xff;
   break;
  case 139:
  case 138:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   reg = nct6775_read_value(data,
     data->REG_CRITICAL_PWM_ENABLE[i]);
   if (reg & data->CRITICAL_PWM_ENABLE_MASK)
    reg = nct6775_read_value(data,
     data->REG_CRITICAL_PWM[i]);
   else
    reg = 0xff;
   data->auto_pwm[i][data->auto_pwm_num] = reg;
   break;
  }
 }
}
