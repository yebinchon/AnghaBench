
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int* pwm_fcms; unsigned long* pwm_tfmr; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;


 int W83795_REG_FCMS2 ;
 int W83795_REG_TFMR (int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;
 int w83795_write (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_temp_pwm_enable(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = w83795_update_pwm_config(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned long tmp;

 if (kstrtoul(buf, 10, &tmp) < 0)
  return -EINVAL;

 switch (nr) {
 case 129:
  if (tmp != 3 && tmp != 4)
   return -EINVAL;
  tmp -= 3;
  mutex_lock(&data->update_lock);
  data->pwm_fcms[1] &= ~(1 << index);
  data->pwm_fcms[1] |= tmp << index;
  w83795_write(client, W83795_REG_FCMS2, data->pwm_fcms[1]);
  mutex_unlock(&data->update_lock);
  break;
 case 128:
  mutex_lock(&data->update_lock);
  tmp = clamp_val(tmp, 0, 0xff);
  w83795_write(client, W83795_REG_TFMR(index), tmp);
  data->pwm_tfmr[index] = tmp;
  mutex_unlock(&data->update_lock);
  break;
 }
 return count;
}
