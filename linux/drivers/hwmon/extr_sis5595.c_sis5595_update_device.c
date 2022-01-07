
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis5595_data {int valid; int maxins; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int temp; int temp_over; int temp_hyst; int* fan_div; int alarms; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 int HZ ;
 int SIS5595_REG_ALARM1 ;
 int SIS5595_REG_ALARM2 ;
 int SIS5595_REG_FAN (int) ;
 int SIS5595_REG_FANDIV ;
 int SIS5595_REG_FAN_MIN (int) ;
 int SIS5595_REG_IN (int) ;
 int SIS5595_REG_IN_MAX (int) ;
 int SIS5595_REG_IN_MIN (int) ;
 int SIS5595_REG_TEMP ;
 int SIS5595_REG_TEMP_HYST ;
 int SIS5595_REG_TEMP_OVER ;
 struct sis5595_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sis5595_read_value (struct sis5595_data*,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct sis5595_data *sis5595_update_device(struct device *dev)
{
 struct sis5595_data *data = dev_get_drvdata(dev);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {

  for (i = 0; i <= data->maxins; i++) {
   data->in[i] =
       sis5595_read_value(data, SIS5595_REG_IN(i));
   data->in_min[i] =
       sis5595_read_value(data,
            SIS5595_REG_IN_MIN(i));
   data->in_max[i] =
       sis5595_read_value(data,
            SIS5595_REG_IN_MAX(i));
  }
  for (i = 0; i < 2; i++) {
   data->fan[i] =
       sis5595_read_value(data, SIS5595_REG_FAN(i));
   data->fan_min[i] =
       sis5595_read_value(data,
            SIS5595_REG_FAN_MIN(i));
  }
  if (data->maxins == 3) {
   data->temp =
       sis5595_read_value(data, SIS5595_REG_TEMP);
   data->temp_over =
       sis5595_read_value(data, SIS5595_REG_TEMP_OVER);
   data->temp_hyst =
       sis5595_read_value(data, SIS5595_REG_TEMP_HYST);
  }
  i = sis5595_read_value(data, SIS5595_REG_FANDIV);
  data->fan_div[0] = (i >> 4) & 0x03;
  data->fan_div[1] = i >> 6;
  data->alarms =
      sis5595_read_value(data, SIS5595_REG_ALARM1) |
      (sis5595_read_value(data, SIS5595_REG_ALARM2) << 8);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
