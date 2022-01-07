
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct ds1621_data {int update_lock; int * temp; int client; int zbits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int * DS1621_REG_TEMP ;
 int DS1621_TEMP_TO_REG (long,int ) ;
 struct ds1621_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_word_swapped (int ,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *da,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ds1621_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp[attr->index] = DS1621_TEMP_TO_REG(val, data->zbits);
 i2c_smbus_write_word_swapped(data->client, DS1621_REG_TEMP[attr->index],
         data->temp[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
