
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int* beeps; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int W83793_REG_BEEP (int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_beep(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index >> 3;
 int shift = sensor_attr->index & 0x07;
 u8 beep_bit = 1 << shift;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val > 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beeps[index] = w83793_read_value(client, W83793_REG_BEEP(index));
 data->beeps[index] &= ~beep_bit;
 data->beeps[index] |= val << shift;
 w83793_write_value(client, W83793_REG_BEEP(index), data->beeps[index]);
 mutex_unlock(&data->update_lock);

 return count;
}
