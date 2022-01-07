
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct ds620_data {long* temp; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int * DS620_REG_TEMP ;
 int clamp_val (long,int,int) ;
 struct ds620_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *da,
     const char *buf, size_t count)
{
 int res;
 long val;

 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ds620_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 res = kstrtol(buf, 10, &val);

 if (res)
  return res;

 val = (clamp_val(val, -128000, 128000) * 10 / 625) * 8;

 mutex_lock(&data->update_lock);
 data->temp[attr->index] = val;
 i2c_smbus_write_word_swapped(client, DS620_REG_TEMP[attr->index],
         data->temp[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
