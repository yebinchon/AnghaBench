
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct emc2103_data {int valid; int temp_count; int update_lock; scalar_t__ last_updated; int fan_target; int fan_tach; int temp_max_alarm; int temp_min_alarm; int * temp_max; int * temp_min; int * temp; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int HZ ;
 int REG_FAN_TACH_HI ;
 int REG_FAN_TACH_LO ;
 int REG_FAN_TARGET_HI ;
 int REG_FAN_TARGET_LO ;
 int * REG_TEMP ;
 int * REG_TEMP_MAX ;
 int REG_TEMP_MAX_ALARM ;
 int * REG_TEMP_MIN ;
 int REG_TEMP_MIN_ALARM ;
 struct emc2103_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_fan_config_from_i2c (struct i2c_client*) ;
 int read_fan_from_i2c (struct i2c_client*,int *,int ,int ) ;
 int read_temp_from_i2c (struct i2c_client*,int ,int *) ;
 int read_u8_from_i2c (struct i2c_client*,int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct emc2103_data *emc2103_update_device(struct device *dev)
{
 struct emc2103_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  int i;

  for (i = 0; i < data->temp_count; i++) {
   read_temp_from_i2c(client, REG_TEMP[i], &data->temp[i]);
   read_u8_from_i2c(client, REG_TEMP_MIN[i],
    &data->temp_min[i]);
   read_u8_from_i2c(client, REG_TEMP_MAX[i],
    &data->temp_max[i]);
  }

  read_u8_from_i2c(client, REG_TEMP_MIN_ALARM,
   &data->temp_min_alarm);
  read_u8_from_i2c(client, REG_TEMP_MAX_ALARM,
   &data->temp_max_alarm);

  read_fan_from_i2c(client, &data->fan_tach,
   REG_FAN_TACH_HI, REG_FAN_TACH_LO);
  read_fan_from_i2c(client, &data->fan_target,
   REG_FAN_TARGET_HI, REG_FAN_TARGET_LO);
  read_fan_config_from_i2c(client);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
