
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83795_data {int* beeps; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W83795_REG_BEEP (int) ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83795_read (struct i2c_client*,int ) ;
 int w83795_write (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_beep(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index >> 3;
 int shift = sensor_attr->index & 0x07;
 u8 beep_bit = 1 << shift;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;
 if (val != 0 && val != 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beeps[index] = w83795_read(client, W83795_REG_BEEP(index));
 data->beeps[index] &= ~beep_bit;
 data->beeps[index] |= val << shift;
 w83795_write(client, W83795_REG_BEEP(index), data->beeps[index]);
 mutex_unlock(&data->update_lock);

 return count;
}
