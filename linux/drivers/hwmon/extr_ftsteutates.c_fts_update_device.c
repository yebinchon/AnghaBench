
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fts_data {int valid; int fan_present; int fan_alarm; int* fan_input; int* fan_source; int temp_alarm; int* temp_input; int* volt; int update_lock; scalar_t__ last_updated; int client; } ;


 int BIT (int) ;
 int EAGAIN ;
 int FTS_DEVICE_STATUS_REG ;
 int FTS_FAN_EVENT_REG ;
 int FTS_FAN_PRESENT_REG ;
 int FTS_NO_FAN_SENSORS ;
 int FTS_NO_TEMP_SENSORS ;
 int FTS_NO_VOLT_SENSORS ;
 int FTS_REG_FAN_INPUT (int) ;
 int FTS_REG_FAN_SOURCE (int) ;
 int FTS_REG_TEMP_INPUT (int) ;
 int FTS_REG_VOLT (int) ;
 int FTS_SENSOR_EVENT_REG ;
 int HZ ;
 int fts_read_byte (int ,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fts_update_device(struct fts_data *data)
{
 int i;
 int err = 0;

 mutex_lock(&data->update_lock);
 if (!time_after(jiffies, data->last_updated + 2 * HZ) && data->valid)
  goto exit;

 err = fts_read_byte(data->client, FTS_DEVICE_STATUS_REG);
 if (err < 0)
  goto exit;

 data->valid = !!(err & 0x02);
 if (unlikely(!data->valid)) {
  err = -EAGAIN;
  goto exit;
 }

 err = fts_read_byte(data->client, FTS_FAN_PRESENT_REG);
 if (err < 0)
  goto exit;
 data->fan_present = err;

 err = fts_read_byte(data->client, FTS_FAN_EVENT_REG);
 if (err < 0)
  goto exit;
 data->fan_alarm = err;

 for (i = 0; i < FTS_NO_FAN_SENSORS; i++) {
  if (data->fan_present & BIT(i)) {
   err = fts_read_byte(data->client, FTS_REG_FAN_INPUT(i));
   if (err < 0)
    goto exit;
   data->fan_input[i] = err;

   err = fts_read_byte(data->client,
         FTS_REG_FAN_SOURCE(i));
   if (err < 0)
    goto exit;
   data->fan_source[i] = err;
  } else {
   data->fan_input[i] = 0;
   data->fan_source[i] = 0;
  }
 }

 err = fts_read_byte(data->client, FTS_SENSOR_EVENT_REG);
 if (err < 0)
  goto exit;
 data->temp_alarm = err;

 for (i = 0; i < FTS_NO_TEMP_SENSORS; i++) {
  err = fts_read_byte(data->client, FTS_REG_TEMP_INPUT(i));
  if (err < 0)
   goto exit;
  data->temp_input[i] = err;
 }

 for (i = 0; i < FTS_NO_VOLT_SENSORS; i++) {
  err = fts_read_byte(data->client, FTS_REG_VOLT(i));
  if (err < 0)
   goto exit;
  data->volt[i] = err;
 }
 data->last_updated = jiffies;
 err = 0;
exit:
 mutex_unlock(&data->update_lock);
 return err;
}
