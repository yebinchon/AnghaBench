
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (int ) ;
 size_t EINVAL ;
 int TEMP_TRANGE_REG (size_t) ;
 int adt7475_read (int ) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int find_closest (long,int ,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwmfreq_table ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwmfreq_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int out;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 out = find_closest(val, pwmfreq_table, ARRAY_SIZE(pwmfreq_table));

 mutex_lock(&data->lock);

 data->range[sattr->index] =
  adt7475_read(TEMP_TRANGE_REG(sattr->index));
 data->range[sattr->index] &= ~0xf;
 data->range[sattr->index] |= out;

 i2c_smbus_write_byte_data(client, TEMP_TRANGE_REG(sattr->index),
      data->range[sattr->index]);

 mutex_unlock(&data->lock);
 return count;
}
