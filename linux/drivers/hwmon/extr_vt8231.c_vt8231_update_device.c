
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vt8231_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_max; int* temp_min; int* fan_div; int alarms; int update_lock; scalar_t__ last_updated; int uch_config; } ;
struct device {int dummy; } ;


 int HZ ;
 scalar_t__ ISTEMP (int,int ) ;
 scalar_t__ ISVOLT (int,int ) ;
 int VT8231_REG_ALARM1 ;
 int VT8231_REG_ALARM2 ;
 int VT8231_REG_FAN (int) ;
 int VT8231_REG_FANDIV ;
 int VT8231_REG_FAN_MIN (int) ;
 int VT8231_REG_TEMP_LOW01 ;
 int VT8231_REG_TEMP_LOW25 ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regtemp ;
 int * regtempmax ;
 int * regtempmin ;
 int * regvolt ;
 int * regvoltmax ;
 int * regvoltmin ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int vt8231_read_value (struct vt8231_data*,int ) ;

__attribute__((used)) static struct vt8231_data *vt8231_update_device(struct device *dev)
{
 struct vt8231_data *data = dev_get_drvdata(dev);
 int i;
 u16 low;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  for (i = 0; i < 6; i++) {
   if (ISVOLT(i, data->uch_config)) {
    data->in[i] = vt8231_read_value(data,
      regvolt[i]);
    data->in_min[i] = vt8231_read_value(data,
      regvoltmin[i]);
    data->in_max[i] = vt8231_read_value(data,
      regvoltmax[i]);
   }
  }
  for (i = 0; i < 2; i++) {
   data->fan[i] = vt8231_read_value(data,
      VT8231_REG_FAN(i));
   data->fan_min[i] = vt8231_read_value(data,
      VT8231_REG_FAN_MIN(i));
  }

  low = vt8231_read_value(data, VT8231_REG_TEMP_LOW01);
  low = (low >> 6) | ((low & 0x30) >> 2)
      | (vt8231_read_value(data, VT8231_REG_TEMP_LOW25) << 4);
  for (i = 0; i < 6; i++) {
   if (ISTEMP(i, data->uch_config)) {
    data->temp[i] = (vt8231_read_value(data,
             regtemp[i]) << 2)
      | ((low >> (2 * i)) & 0x03);
    data->temp_max[i] = vt8231_read_value(data,
            regtempmax[i]);
    data->temp_min[i] = vt8231_read_value(data,
            regtempmin[i]);
   }
  }

  i = vt8231_read_value(data, VT8231_REG_FANDIV);
  data->fan_div[0] = (i >> 4) & 0x03;
  data->fan_div[1] = i >> 6;
  data->alarms = vt8231_read_value(data, VT8231_REG_ALARM1) |
   (vt8231_read_value(data, VT8231_REG_ALARM2) << 8);


  if (!data->fan[0] && data->fan_min[0])
   data->alarms |= 0x40;
  else if (data->fan[0] && !data->fan_min[0])
   data->alarms &= ~0x40;

  if (!data->fan[1] && data->fan_min[1])
   data->alarms |= 0x80;
  else if (data->fan[1] && !data->fan_min[1])
   data->alarms &= ~0x80;

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
