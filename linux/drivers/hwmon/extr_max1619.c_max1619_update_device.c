
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1619_data {int valid; int alarms; int update_lock; scalar_t__ last_updated; void** temp; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int MAX1619_REG_R_CONFIG ;
 int MAX1619_REG_R_STATUS ;
 int dev_dbg (int *,char*) ;
 struct max1619_data* dev_get_drvdata (struct device*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regs_read ;
 int t_num_regs ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct max1619_data *max1619_update_device(struct device *dev)
{
 struct max1619_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int config, i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ * 2) || !data->valid) {
  dev_dbg(&client->dev, "Updating max1619 data.\n");
  for (i = 0; i < t_num_regs; i++)
   data->temp[i] = i2c_smbus_read_byte_data(client,
     regs_read[i]);
  data->alarms = i2c_smbus_read_byte_data(client,
     MAX1619_REG_R_STATUS);

  config = i2c_smbus_read_byte_data(client, MAX1619_REG_R_CONFIG);
  if (!(config & 0x20))
   data->alarms ^= 0x02;

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
