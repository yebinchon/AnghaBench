
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max1668_data {int update_lock; int * temp_max; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int MAX1668_REG_LIMH_WR (int) ;
 int clamp_val (long,int,int) ;
 struct max1668_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_max(struct device *dev,
       struct device_attribute *devattr,
       const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct max1668_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;
 int ret;

 ret = kstrtol(buf, 10, &temp);
 if (ret < 0)
  return ret;

 mutex_lock(&data->update_lock);
 data->temp_max[index] = clamp_val(temp/1000, -128, 127);
 ret = i2c_smbus_write_byte_data(client,
     MAX1668_REG_LIMH_WR(index),
     data->temp_max[index]);
 if (ret < 0)
  count = ret;
 mutex_unlock(&data->update_lock);

 return count;
}
