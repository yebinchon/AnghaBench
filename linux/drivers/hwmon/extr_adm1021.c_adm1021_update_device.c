
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int valid; int* temp; int* temp_max; scalar_t__ type; int* temp_min; int alarms; int remote_temp_offset; int remote_temp_offset_prec; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
typedef int s8 ;


 int ADM1021_REG_STATUS ;
 int ADM1021_REG_TEMP (int) ;
 int ADM1021_REG_THYST_R (int) ;
 int ADM1021_REG_TOS_R (int) ;
 int ADM1023_REG_REM_OFFSET ;
 int ADM1023_REG_REM_OFFSET_PREC ;
 int ADM1023_REG_REM_TEMP_PREC ;
 int ADM1023_REG_REM_THYST_PREC ;
 int ADM1023_REG_REM_TOS_PREC ;
 int HZ ;
 scalar_t__ adm1023 ;
 int dev_dbg (struct device*,char*) ;
 struct adm1021_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ lm84 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct adm1021_data *adm1021_update_device(struct device *dev)
{
 struct adm1021_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  int i;

  dev_dbg(dev, "Starting adm1021 update\n");

  for (i = 0; i < 2; i++) {
   data->temp[i] = 1000 *
    (s8) i2c_smbus_read_byte_data(
     client, ADM1021_REG_TEMP(i));
   data->temp_max[i] = 1000 *
    (s8) i2c_smbus_read_byte_data(
     client, ADM1021_REG_TOS_R(i));
   if (data->type != lm84) {
    data->temp_min[i] = 1000 *
      (s8) i2c_smbus_read_byte_data(client,
       ADM1021_REG_THYST_R(i));
   }
  }
  data->alarms = i2c_smbus_read_byte_data(client,
      ADM1021_REG_STATUS) & 0x7c;
  if (data->type == adm1023) {




   data->temp[1] += 125 * (i2c_smbus_read_byte_data(
    client, ADM1023_REG_REM_TEMP_PREC) >> 5);
   data->temp_max[1] += 125 * (i2c_smbus_read_byte_data(
    client, ADM1023_REG_REM_TOS_PREC) >> 5);
   data->temp_min[1] += 125 * (i2c_smbus_read_byte_data(
    client, ADM1023_REG_REM_THYST_PREC) >> 5);
   data->remote_temp_offset =
    i2c_smbus_read_byte_data(client,
      ADM1023_REG_REM_OFFSET);
   data->remote_temp_offset_prec =
    i2c_smbus_read_byte_data(client,
      ADM1023_REG_REM_OFFSET_PREC);
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
