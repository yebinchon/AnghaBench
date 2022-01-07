
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct ds1621_data {int valid; int update_lock; scalar_t__ last_updated; int conf; int * temp; scalar_t__ update_interval; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int DS1621_ALARM_TEMP_HIGH ;
 int DS1621_ALARM_TEMP_LOW ;
 int DS1621_REG_CONF ;
 int * DS1621_REG_TEMP ;
 int dev_dbg (int *,char*) ;
 struct ds1621_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct ds1621_data *ds1621_update_client(struct device *dev)
{
 struct ds1621_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 new_conf;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + data->update_interval) ||
     !data->valid) {
  int i;

  dev_dbg(&client->dev, "Starting ds1621 update\n");

  data->conf = i2c_smbus_read_byte_data(client, DS1621_REG_CONF);

  for (i = 0; i < ARRAY_SIZE(data->temp); i++)
   data->temp[i] = i2c_smbus_read_word_swapped(client,
        DS1621_REG_TEMP[i]);


  new_conf = data->conf;
  if (data->temp[0] > data->temp[1])
   new_conf &= ~DS1621_ALARM_TEMP_LOW;
  if (data->temp[0] < data->temp[2])
   new_conf &= ~DS1621_ALARM_TEMP_HIGH;
  if (data->conf != new_conf)
   i2c_smbus_write_byte_data(client, DS1621_REG_CONF,
        new_conf);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
