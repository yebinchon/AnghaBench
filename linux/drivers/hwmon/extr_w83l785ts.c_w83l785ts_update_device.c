
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83l785ts_data {int valid; int update_lock; scalar_t__ last_updated; void** temp; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int W83L785TS_REG_TEMP ;
 int W83L785TS_REG_TEMP_OVER ;
 int dev_dbg (int *,char*) ;
 struct w83l785ts_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 void* w83l785ts_read_value (struct i2c_client*,int ,void*) ;

__attribute__((used)) static struct w83l785ts_data *w83l785ts_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83l785ts_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (!data->valid || time_after(jiffies, data->last_updated + HZ * 2)) {
  dev_dbg(&client->dev, "Updating w83l785ts data.\n");
  data->temp[0] = w83l785ts_read_value(client,
    W83L785TS_REG_TEMP, data->temp[0]);
  data->temp[1] = w83l785ts_read_value(client,
    W83L785TS_REG_TEMP_OVER, data->temp[1]);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
