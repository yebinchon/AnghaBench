
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct g762_data {int valid; int update_lock; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int G762_REG_SET_OUT ;
 struct g762_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_set_pwm(struct device *dev, unsigned long val)
{
 struct g762_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;

 if (val > 255)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 ret = i2c_smbus_write_byte_data(client, G762_REG_SET_OUT, val);
 data->valid = 0;
 mutex_unlock(&data->update_lock);

 return ret;
}
