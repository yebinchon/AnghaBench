
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627hf_data {scalar_t__ type; int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* pwm; int* pwm_freq; int* pwm_enable; int* temp; int* temp_max; int* temp_max_hyst; int alarms; int beep_mask; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 int HZ ;
 int W83627HF_REG_FAN (int) ;
 int W83627HF_REG_FAN_MIN (int) ;
 int W83627HF_REG_PWM_FREQ ;
 int* W83627THF_PWM_ENABLE_SHIFT ;
 int * W83627THF_REG_PWM_ENABLE ;
 int * W83637HF_REG_PWM_FREQ ;
 int W836X7HF_REG_PWM (scalar_t__,int) ;
 int W83781D_REG_ALARM1 ;
 int W83781D_REG_ALARM2 ;
 int W83781D_REG_ALARM3 ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 int W83781D_REG_IN (int) ;
 int W83781D_REG_IN_MAX (int) ;
 int W83781D_REG_IN_MIN (int) ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ w83627hf ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int * w83627hf_reg_temp ;
 int * w83627hf_reg_temp_hyst ;
 int * w83627hf_reg_temp_over ;
 int w83627hf_update_fan_div (struct w83627hf_data*) ;
 scalar_t__ w83627thf ;
 scalar_t__ w83697hf ;

__attribute__((used)) static struct w83627hf_data *w83627hf_update_device(struct device *dev)
{
 struct w83627hf_data *data = dev_get_drvdata(dev);
 int i, num_temps = (data->type == w83697hf) ? 2 : 3;
 int num_pwms = (data->type == w83697hf) ? 2 : 3;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  for (i = 0; i <= 8; i++) {

   if (((data->type == w83697hf) && (i == 1)) ||
       ((data->type != w83627hf && data->type != w83697hf)
       && (i == 5 || i == 6)))
    continue;
   data->in[i] =
       w83627hf_read_value(data, W83781D_REG_IN(i));
   data->in_min[i] =
       w83627hf_read_value(data,
            W83781D_REG_IN_MIN(i));
   data->in_max[i] =
       w83627hf_read_value(data,
            W83781D_REG_IN_MAX(i));
  }
  for (i = 0; i <= 2; i++) {
   data->fan[i] =
       w83627hf_read_value(data, W83627HF_REG_FAN(i));
   data->fan_min[i] =
       w83627hf_read_value(data,
            W83627HF_REG_FAN_MIN(i));
  }
  for (i = 0; i <= 2; i++) {
   u8 tmp = w83627hf_read_value(data,
    W836X7HF_REG_PWM(data->type, i));

    if (data->type == w83627thf)
    tmp &= 0xf0;
   data->pwm[i] = tmp;
   if (i == 1 &&
       (data->type == w83627hf || data->type == w83697hf))
    break;
  }
  if (data->type == w83627hf) {
    u8 tmp = w83627hf_read_value(data,
      W83627HF_REG_PWM_FREQ);
    data->pwm_freq[0] = tmp & 0x07;
    data->pwm_freq[1] = (tmp >> 4) & 0x07;
  } else if (data->type != w83627thf) {
   for (i = 1; i <= 3; i++) {
    data->pwm_freq[i - 1] =
     w83627hf_read_value(data,
      W83637HF_REG_PWM_FREQ[i - 1]);
    if (i == 2 && (data->type == w83697hf))
     break;
   }
  }
  if (data->type != w83627hf) {
   for (i = 0; i < num_pwms; i++) {
    u8 tmp = w83627hf_read_value(data,
     W83627THF_REG_PWM_ENABLE[i]);
    data->pwm_enable[i] =
     ((tmp >> W83627THF_PWM_ENABLE_SHIFT[i])
     & 0x03) + 1;
   }
  }
  for (i = 0; i < num_temps; i++) {
   data->temp[i] = w83627hf_read_value(
      data, w83627hf_reg_temp[i]);
   data->temp_max[i] = w83627hf_read_value(
      data, w83627hf_reg_temp_over[i]);
   data->temp_max_hyst[i] = w83627hf_read_value(
      data, w83627hf_reg_temp_hyst[i]);
  }

  w83627hf_update_fan_div(data);

  data->alarms =
      w83627hf_read_value(data, W83781D_REG_ALARM1) |
      (w83627hf_read_value(data, W83781D_REG_ALARM2) << 8) |
      (w83627hf_read_value(data, W83781D_REG_ALARM3) << 16);
  i = w83627hf_read_value(data, W83781D_REG_BEEP_INTS2);
  data->beep_mask = (i << 8) |
      w83627hf_read_value(data, W83781D_REG_BEEP_INTS1) |
      w83627hf_read_value(data, W83781D_REG_BEEP_INTS3) << 16;
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
