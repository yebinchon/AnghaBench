
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int* pwm_fcms; int* pwm_tfmr; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EOPNOTSUPP ;
 int W83795_REG_FCMS1 ;
 int W83795_REG_TFMR (int) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;
 int w83795_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwm_enable(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = w83795_update_pwm_config(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 unsigned long val;
 int i;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;
 if (val < 1 || val > 2)
  return -EINVAL;


 if (val > 1) {
  dev_warn(dev, "Automatic fan speed control support disabled\n");
  dev_warn(dev, "Build with CONFIG_SENSORS_W83795_FANCTRL=y if you want it\n");
  return -EOPNOTSUPP;
 }


 mutex_lock(&data->update_lock);
 switch (val) {
 case 1:

  data->pwm_fcms[0] &= ~(1 << index);
  w83795_write(client, W83795_REG_FCMS1, data->pwm_fcms[0]);

  for (i = 0; i < 6; i++) {
   data->pwm_tfmr[i] &= ~(1 << index);
   w83795_write(client, W83795_REG_TFMR(i),
    data->pwm_tfmr[i]);
  }
  break;
 case 2:
  data->pwm_fcms[0] |= (1 << index);
  w83795_write(client, W83795_REG_FCMS1, data->pwm_fcms[0]);
  break;
 }
 mutex_unlock(&data->update_lock);
 return count;
}
