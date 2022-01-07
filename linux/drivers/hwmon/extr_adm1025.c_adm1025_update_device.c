
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device {int dummy; } ;
struct adm1025_data {int valid; int* in; int* in_min; int* in_max; int* temp; int* temp_min; int* temp_max; int alarms; int vid; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;


 int ADM1025_REG_IN (int) ;
 int ADM1025_REG_IN_MAX (int) ;
 int ADM1025_REG_IN_MIN (int) ;
 int ADM1025_REG_STATUS1 ;
 int ADM1025_REG_STATUS2 ;
 int ADM1025_REG_TEMP (int) ;
 int ADM1025_REG_TEMP_HIGH (int) ;
 int ADM1025_REG_TEMP_LOW (int) ;
 int ADM1025_REG_VID ;
 int ADM1025_REG_VID4 ;
 int HZ ;
 int dev_dbg (int *,char*) ;
 struct adm1025_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct adm1025_data *adm1025_update_device(struct device *dev)
{
 struct adm1025_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ * 2) || !data->valid) {
  int i;

  dev_dbg(&client->dev, "Updating data.\n");
  for (i = 0; i < 6; i++) {
   data->in[i] = i2c_smbus_read_byte_data(client,
          ADM1025_REG_IN(i));
   data->in_min[i] = i2c_smbus_read_byte_data(client,
       ADM1025_REG_IN_MIN(i));
   data->in_max[i] = i2c_smbus_read_byte_data(client,
       ADM1025_REG_IN_MAX(i));
  }
  for (i = 0; i < 2; i++) {
   data->temp[i] = i2c_smbus_read_byte_data(client,
     ADM1025_REG_TEMP(i));
   data->temp_min[i] = i2c_smbus_read_byte_data(client,
         ADM1025_REG_TEMP_LOW(i));
   data->temp_max[i] = i2c_smbus_read_byte_data(client,
         ADM1025_REG_TEMP_HIGH(i));
  }
  data->alarms = i2c_smbus_read_byte_data(client,
          ADM1025_REG_STATUS1)
        | (i2c_smbus_read_byte_data(client,
    ADM1025_REG_STATUS2) << 8);
  data->vid = (i2c_smbus_read_byte_data(client,
        ADM1025_REG_VID) & 0x0f)
     | ((i2c_smbus_read_byte_data(client,
         ADM1025_REG_VID4) & 0x01) << 4);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
