
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct w83795_data {int* temp_src; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W83795_REG_TSS (size_t) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 unsigned long** tss_map ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;
 int w83795_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_temp_src(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = w83795_update_pwm_config(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 int tmp;
 unsigned long channel;
 u8 val = index / 2;

 if (kstrtoul(buf, 10, &channel) < 0 ||
     channel < 1 || channel > 14)
  return -EINVAL;


 for (tmp = 0; tmp < 4; tmp++) {
  if (tss_map[tmp][index] == channel - 1)
   break;
 }
 if (tmp == 4)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (index & 1) {
  tmp <<= 4;
  data->temp_src[val] &= 0x0f;
 } else {
  data->temp_src[val] &= 0xf0;
 }
 data->temp_src[val] |= tmp;
 w83795_write(client, W83795_REG_TSS(val), data->temp_src[val]);
 mutex_unlock(&data->update_lock);

 return count;
}
