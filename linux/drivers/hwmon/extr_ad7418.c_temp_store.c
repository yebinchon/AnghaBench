
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int lock; int * temp; struct i2c_client* client; } ;
typedef int ssize_t ;


 int * AD7418_REG_TEMP ;
 int LM75_TEMP_TO_REG (long) ;
 struct ad7418_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct ad7418_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;
 int ret = kstrtol(buf, 10, &temp);

 if (ret < 0)
  return ret;

 mutex_lock(&data->lock);
 data->temp[attr->index] = LM75_TEMP_TO_REG(temp);
 i2c_smbus_write_word_swapped(client,
         AD7418_REG_TEMP[attr->index],
         data->temp[attr->index]);
 mutex_unlock(&data->lock);
 return count;
}
