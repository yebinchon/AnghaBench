
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct nct6775_data {int valid; int in_num; int have_in; int** in; int has_fan; int has_fan_min; int* fan_min; int* fan_pulses; int* FAN_PULSE_SHIFT; int have_temp; int have_temp_fixed; int* temp_offset; int alarms; int beeps; int update_lock; scalar_t__ last_updated; scalar_t__* REG_BEEP; scalar_t__* REG_ALARM; scalar_t__* REG_TEMP_OFFSET; scalar_t__** reg_temp; int ** temp; scalar_t__* REG_FAN_PULSES; scalar_t__* REG_FAN_MIN; int * fan_div; scalar_t__* (* fan_from_reg ) (int,int ) ;scalar_t__** rpm; scalar_t__* REG_FAN; scalar_t__** REG_IN_MINMAX; scalar_t__* REG_VIN; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (scalar_t__**) ;
 int BIT (int) ;
 int HZ ;
 int NUM_REG_ALARM ;
 int NUM_REG_BEEP ;
 int NUM_TEMP ;
 int NUM_TEMP_FIXED ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_read_temp (struct nct6775_data*,scalar_t__) ;
 int nct6775_read_value (struct nct6775_data*,scalar_t__) ;
 int nct6775_select_fan_div (struct device*,struct nct6775_data*,int,int) ;
 int nct6775_update_fan_div_common (struct nct6775_data*) ;
 int nct6775_update_pwm (struct device*) ;
 int nct6775_update_pwm_limits (struct device*) ;
 scalar_t__* stub1 (int,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct nct6775_data *nct6775_update_device(struct device *dev)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 int i, j;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {

  nct6775_update_fan_div_common(data);


  for (i = 0; i < data->in_num; i++) {
   if (!(data->have_in & BIT(i)))
    continue;

   data->in[i][0] = nct6775_read_value(data,
           data->REG_VIN[i]);
   data->in[i][1] = nct6775_read_value(data,
       data->REG_IN_MINMAX[0][i]);
   data->in[i][2] = nct6775_read_value(data,
       data->REG_IN_MINMAX[1][i]);
  }


  for (i = 0; i < ARRAY_SIZE(data->rpm); i++) {
   u16 reg;

   if (!(data->has_fan & BIT(i)))
    continue;

   reg = nct6775_read_value(data, data->REG_FAN[i]);
   data->rpm[i] = data->fan_from_reg(reg,
         data->fan_div[i]);

   if (data->has_fan_min & BIT(i))
    data->fan_min[i] = nct6775_read_value(data,
        data->REG_FAN_MIN[i]);

   if (data->REG_FAN_PULSES[i]) {
    data->fan_pulses[i] =
      (nct6775_read_value(data,
            data->REG_FAN_PULSES[i])
       >> data->FAN_PULSE_SHIFT[i]) & 0x03;
   }

   nct6775_select_fan_div(dev, data, i, reg);
  }

  nct6775_update_pwm(dev);
  nct6775_update_pwm_limits(dev);


  for (i = 0; i < NUM_TEMP; i++) {
   if (!(data->have_temp & BIT(i)))
    continue;
   for (j = 0; j < ARRAY_SIZE(data->reg_temp); j++) {
    if (data->reg_temp[j][i])
     data->temp[j][i]
       = nct6775_read_temp(data,
      data->reg_temp[j][i]);
   }
   if (i >= NUM_TEMP_FIXED ||
       !(data->have_temp_fixed & BIT(i)))
    continue;
   data->temp_offset[i]
     = nct6775_read_value(data, data->REG_TEMP_OFFSET[i]);
  }

  data->alarms = 0;
  for (i = 0; i < NUM_REG_ALARM; i++) {
   u8 alarm;

   if (!data->REG_ALARM[i])
    continue;
   alarm = nct6775_read_value(data, data->REG_ALARM[i]);
   data->alarms |= ((u64)alarm) << (i << 3);
  }

  data->beeps = 0;
  for (i = 0; i < NUM_REG_BEEP; i++) {
   u8 beep;

   if (!data->REG_BEEP[i])
    continue;
   beep = nct6775_read_value(data, data->REG_BEEP[i]);
   data->beeps |= ((u64)beep) << (i << 3);
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
