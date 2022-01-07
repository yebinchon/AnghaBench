
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t nr; int index; } ;
struct max6642_data {int update_lock; int * temp_high; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int clamp_val (int ,int ,int) ;
 struct max6642_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temp_to_reg (unsigned long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(attr);
 struct max6642_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_high[attr2->nr] = clamp_val(temp_to_reg(val), 0, 255);
 i2c_smbus_write_byte_data(data->client, attr2->index,
      data->temp_high[attr2->nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
