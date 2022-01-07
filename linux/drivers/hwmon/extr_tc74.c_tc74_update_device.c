
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc74_data {int valid; int temp_input; int lock; scalar_t__ next_update; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;
typedef int s32 ;


 int BIT (int) ;
 int EAGAIN ;
 int HZ ;
 int TC74_REG_CONFIG ;
 int TC74_REG_TEMP ;
 int dev_dbg (int *,char*,int) ;
 struct tc74_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int tc74_update_device(struct device *dev)
{
 struct tc74_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;

 ret = mutex_lock_interruptible(&data->lock);
 if (ret)
  return ret;

 if (time_after(jiffies, data->next_update) || !data->valid) {
  s32 value;

  value = i2c_smbus_read_byte_data(client, TC74_REG_CONFIG);
  if (value < 0) {
   dev_dbg(&client->dev, "TC74_REG_CONFIG read err %d\n",
    (int)value);

   ret = value;
   goto ret_unlock;
  }

  if (!(value & BIT(6))) {


   ret = -EAGAIN;
   goto ret_unlock;
  }

  value = i2c_smbus_read_byte_data(client, TC74_REG_TEMP);
  if (value < 0) {
   dev_dbg(&client->dev, "TC74_REG_TEMP read err %d\n",
    (int)value);

   ret = value;
   goto ret_unlock;
  }

  data->temp_input = value;
  data->next_update = jiffies + HZ / 4;
  data->valid = 1;
 }

ret_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
