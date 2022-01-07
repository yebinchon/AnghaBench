
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int valid; int update_lock; scalar_t__ last_updated; int * temp; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 int dev_dbg (int *,char*) ;
 struct lm92_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regs ;
 int t_num_regs ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct lm92_data *lm92_update_device(struct device *dev)
{
 struct lm92_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) ||
     !data->valid) {
  dev_dbg(&client->dev, "Updating lm92 data\n");
  for (i = 0; i < t_num_regs; i++) {
   data->temp[i] =
    i2c_smbus_read_word_swapped(client, regs[i]);
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
