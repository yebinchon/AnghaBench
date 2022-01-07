
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct max6639_data {int update_lock; int * temp_alert; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX6639_REG_ALERT_LIMIT (size_t) ;
 int TEMP_LIMIT_TO_REG (unsigned long) ;
 struct max6639_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_crit_store(struct device *dev,
          struct device_attribute *dev_attr,
          const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);
 struct max6639_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int res;

 res = kstrtoul(buf, 10, &val);
 if (res)
  return res;

 mutex_lock(&data->update_lock);
 data->temp_alert[attr->index] = TEMP_LIMIT_TO_REG(val);
 i2c_smbus_write_byte_data(client,
      MAX6639_REG_ALERT_LIMIT(attr->index),
      data->temp_alert[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
