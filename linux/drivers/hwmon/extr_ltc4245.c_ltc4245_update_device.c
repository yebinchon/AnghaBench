
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4245_data {int valid; int update_lock; scalar_t__ last_updated; scalar_t__* vregs; scalar_t__* cregs; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ HZ ;
 struct ltc4245_data* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 scalar_t__ jiffies ;
 int ltc4245_update_gpios (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ltc4245_data *ltc4245_update_device(struct device *dev)
{
 struct ltc4245_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 s32 val;
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {


  for (i = 0; i < ARRAY_SIZE(data->cregs); i++) {
   val = i2c_smbus_read_byte_data(client, i);
   if (unlikely(val < 0))
    data->cregs[i] = 0;
   else
    data->cregs[i] = val;
  }


  for (i = 0; i < ARRAY_SIZE(data->vregs); i++) {
   val = i2c_smbus_read_byte_data(client, i+0x10);
   if (unlikely(val < 0))
    data->vregs[i] = 0;
   else
    data->vregs[i] = val;
  }


  ltc4245_update_gpios(dev);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
