
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int update_lock; int * temp_max; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM9240_REG_TEMP_MAX (size_t) ;
 int TEMP_TO_REG (long) ;
 struct adm9240_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t max_store(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adm9240_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_max[attr->index] = TEMP_TO_REG(val);
 i2c_smbus_write_byte_data(client, ADM9240_REG_TEMP_MAX(attr->index),
   data->temp_max[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
