
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sensor_device_attribute {size_t index; } ;
struct max6639_data {int update_lock; scalar_t__* pwm; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX6639_REG_TARGTDUTY (size_t) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 struct max6639_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,scalar_t__) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev,
    struct device_attribute *dev_attr, const char *buf,
    size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);
 struct max6639_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int res;

 res = kstrtoul(buf, 10, &val);
 if (res)
  return res;

 val = clamp_val(val, 0, 255);

 mutex_lock(&data->update_lock);
 data->pwm[attr->index] = (u8)(val * 120 / 255);
 i2c_smbus_write_byte_data(client,
      MAX6639_REG_TARGTDUTY(attr->index),
      data->pwm[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
