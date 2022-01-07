
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct ds620_data {int valid; int* temp; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int * DS620_REG_TEMP ;
 struct ds620_data* ERR_PTR (int) ;
 int HZ ;
 int dev_dbg (int *,char*) ;
 struct ds620_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct ds620_data *ds620_update_client(struct device *dev)
{
 struct ds620_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct ds620_data *ret = data;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  int i;
  int res;

  dev_dbg(&client->dev, "Starting ds620 update\n");

  for (i = 0; i < ARRAY_SIZE(data->temp); i++) {
   res = i2c_smbus_read_word_swapped(client,
         DS620_REG_TEMP[i]);
   if (res < 0) {
    ret = ERR_PTR(res);
    goto abort;
   }

   data->temp[i] = res;
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }
abort:
 mutex_unlock(&data->update_lock);

 return ret;
}
