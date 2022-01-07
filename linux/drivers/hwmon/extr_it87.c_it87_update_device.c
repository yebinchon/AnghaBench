
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {int valid; int has_in; int** in; int has_fan; int** fan; int has_temp; int** temp; int* fan_div; int alarms; int beeps; int fan_main_ctrl; int fan_ctl; int has_pwm; int sensor; int extra; scalar_t__ type; int vid; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int HZ ;
 int IT87_REG_ALARM1 ;
 int IT87_REG_ALARM2 ;
 int IT87_REG_ALARM3 ;
 int IT87_REG_BEEP_ENABLE ;
 int IT87_REG_CONFIG ;
 int * IT87_REG_FAN ;
 int * IT87_REG_FANX ;
 int * IT87_REG_FANX_MIN ;
 int IT87_REG_FAN_CTL ;
 int IT87_REG_FAN_DIV ;
 int IT87_REG_FAN_MAIN_CTRL ;
 int * IT87_REG_FAN_MIN ;
 int IT87_REG_TEMP (int) ;
 int IT87_REG_TEMP_ENABLE ;
 int IT87_REG_TEMP_EXTRA ;
 int IT87_REG_TEMP_HIGH (int) ;
 int IT87_REG_TEMP_LOW (int) ;
 int * IT87_REG_TEMP_OFFSET ;
 int IT87_REG_VID ;
 int * IT87_REG_VIN ;
 int IT87_REG_VIN_MAX (int) ;
 int IT87_REG_VIN_MIN (int) ;
 int NUM_FAN ;
 int NUM_PWM ;
 int NUM_TEMP ;
 int NUM_TEMP_LIMIT ;
 int NUM_TEMP_OFFSET ;
 int NUM_VIN ;
 int NUM_VIN_LIMIT ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 scalar_t__ has_16bit_fans (struct it87_data*) ;
 scalar_t__ has_temp_offset (struct it87_data*) ;
 scalar_t__ it8712 ;
 scalar_t__ it8716 ;
 int it87_read_value (struct it87_data*,int ) ;
 int it87_update_pwm_ctrl (struct it87_data*,int) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ update_vbat ;

__attribute__((used)) static struct it87_data *it87_update_device(struct device *dev)
{
 struct it87_data *data = dev_get_drvdata(dev);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2) ||
     !data->valid) {
  if (update_vbat) {




   it87_write_value(data, IT87_REG_CONFIG,
    it87_read_value(data, IT87_REG_CONFIG) | 0x40);
  }
  for (i = 0; i < NUM_VIN; i++) {
   if (!(data->has_in & BIT(i)))
    continue;

   data->in[i][0] =
    it87_read_value(data, IT87_REG_VIN[i]);


   if (i >= NUM_VIN_LIMIT)
    continue;

   data->in[i][1] =
    it87_read_value(data, IT87_REG_VIN_MIN(i));
   data->in[i][2] =
    it87_read_value(data, IT87_REG_VIN_MAX(i));
  }

  for (i = 0; i < NUM_FAN; i++) {

   if (!(data->has_fan & BIT(i)))
    continue;

   data->fan[i][1] =
    it87_read_value(data, IT87_REG_FAN_MIN[i]);
   data->fan[i][0] = it87_read_value(data,
           IT87_REG_FAN[i]);

   if (has_16bit_fans(data)) {
    data->fan[i][0] |= it87_read_value(data,
      IT87_REG_FANX[i]) << 8;
    data->fan[i][1] |= it87_read_value(data,
      IT87_REG_FANX_MIN[i]) << 8;
   }
  }
  for (i = 0; i < NUM_TEMP; i++) {
   if (!(data->has_temp & BIT(i)))
    continue;
   data->temp[i][0] =
    it87_read_value(data, IT87_REG_TEMP(i));

   if (has_temp_offset(data) && i < NUM_TEMP_OFFSET)
    data->temp[i][3] =
      it87_read_value(data,
        IT87_REG_TEMP_OFFSET[i]);

   if (i >= NUM_TEMP_LIMIT)
    continue;

   data->temp[i][1] =
    it87_read_value(data, IT87_REG_TEMP_LOW(i));
   data->temp[i][2] =
    it87_read_value(data, IT87_REG_TEMP_HIGH(i));
  }


  if ((data->has_fan & 0x07) && !has_16bit_fans(data)) {
   i = it87_read_value(data, IT87_REG_FAN_DIV);
   data->fan_div[0] = i & 0x07;
   data->fan_div[1] = (i >> 3) & 0x07;
   data->fan_div[2] = (i & 0x40) ? 3 : 1;
  }

  data->alarms =
   it87_read_value(data, IT87_REG_ALARM1) |
   (it87_read_value(data, IT87_REG_ALARM2) << 8) |
   (it87_read_value(data, IT87_REG_ALARM3) << 16);
  data->beeps = it87_read_value(data, IT87_REG_BEEP_ENABLE);

  data->fan_main_ctrl = it87_read_value(data,
    IT87_REG_FAN_MAIN_CTRL);
  data->fan_ctl = it87_read_value(data, IT87_REG_FAN_CTL);
  for (i = 0; i < NUM_PWM; i++) {
   if (!(data->has_pwm & BIT(i)))
    continue;
   it87_update_pwm_ctrl(data, i);
  }

  data->sensor = it87_read_value(data, IT87_REG_TEMP_ENABLE);
  data->extra = it87_read_value(data, IT87_REG_TEMP_EXTRA);





  if (data->type == it8712 || data->type == it8716) {
   data->vid = it87_read_value(data, IT87_REG_VID);




   data->vid &= 0x3f;
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
