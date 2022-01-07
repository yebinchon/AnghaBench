
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm83_data {int valid; int* temp; int update_lock; scalar_t__ last_updated; scalar_t__ alarms; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int LM83_REG_R_STATUS1 ;
 int LM83_REG_R_STATUS2 ;
 int * LM83_REG_R_TEMP ;
 int dev_dbg (int *,char*) ;
 struct lm83_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct lm83_data *lm83_update_device(struct device *dev)
{
 struct lm83_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ * 2) || !data->valid) {
  int nr;

  dev_dbg(&client->dev, "Updating lm83 data.\n");
  for (nr = 0; nr < 9; nr++) {
   data->temp[nr] =
       i2c_smbus_read_byte_data(client,
       LM83_REG_R_TEMP[nr]);
  }
  data->alarms =
      i2c_smbus_read_byte_data(client, LM83_REG_R_STATUS1)
      + (i2c_smbus_read_byte_data(client, LM83_REG_R_STATUS2)
      << 8);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
