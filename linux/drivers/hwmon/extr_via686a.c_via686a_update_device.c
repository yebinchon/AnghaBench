
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_over; int* temp_hyst; int alarms; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 int HZ ;
 int VIA686A_REG_ALARM1 ;
 int VIA686A_REG_ALARM2 ;
 int VIA686A_REG_FAN (int) ;
 int VIA686A_REG_FAN_MIN (int) ;
 int VIA686A_REG_IN (int) ;
 int VIA686A_REG_IN_MAX (int) ;
 int VIA686A_REG_IN_MIN (int) ;
 int * VIA686A_REG_TEMP ;
 int * VIA686A_REG_TEMP_HYST ;
 int VIA686A_REG_TEMP_LOW1 ;
 int VIA686A_REG_TEMP_LOW23 ;
 int * VIA686A_REG_TEMP_OVER ;
 struct via686a_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int via686a_read_value (struct via686a_data*,int ) ;
 int via686a_update_fan_div (struct via686a_data*) ;

__attribute__((used)) static struct via686a_data *via686a_update_device(struct device *dev)
{
 struct via686a_data *data = dev_get_drvdata(dev);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  for (i = 0; i <= 4; i++) {
   data->in[i] =
       via686a_read_value(data, VIA686A_REG_IN(i));
   data->in_min[i] = via686a_read_value(data,
            VIA686A_REG_IN_MIN
            (i));
   data->in_max[i] =
       via686a_read_value(data, VIA686A_REG_IN_MAX(i));
  }
  for (i = 1; i <= 2; i++) {
   data->fan[i - 1] =
       via686a_read_value(data, VIA686A_REG_FAN(i));
   data->fan_min[i - 1] = via686a_read_value(data,
           VIA686A_REG_FAN_MIN(i));
  }
  for (i = 0; i <= 2; i++) {
   data->temp[i] = via686a_read_value(data,
       VIA686A_REG_TEMP[i]) << 2;
   data->temp_over[i] =
       via686a_read_value(data,
            VIA686A_REG_TEMP_OVER[i]);
   data->temp_hyst[i] =
       via686a_read_value(data,
            VIA686A_REG_TEMP_HYST[i]);
  }






  data->temp[0] |= (via686a_read_value(data,
           VIA686A_REG_TEMP_LOW1)
      & 0xc0) >> 6;
  data->temp[1] |=
      (via686a_read_value(data, VIA686A_REG_TEMP_LOW23) &
       0x30) >> 4;
  data->temp[2] |=
      (via686a_read_value(data, VIA686A_REG_TEMP_LOW23) &
       0xc0) >> 6;

  via686a_update_fan_div(data);
  data->alarms =
      via686a_read_value(data,
           VIA686A_REG_ALARM1) |
      (via686a_read_value(data, VIA686A_REG_ALARM2) << 8);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
