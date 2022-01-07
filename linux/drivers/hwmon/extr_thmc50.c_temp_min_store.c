
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thmc50_data {int update_lock; int * temp_min; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int * THMC50_REG_TEMP_MIN ;
 int clamp_val (long,int,int) ;
 struct thmc50_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct thmc50_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_min[nr] = clamp_val(val / 1000, -128, 127);
 i2c_smbus_write_byte_data(client, THMC50_REG_TEMP_MIN[nr],
      data->temp_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
