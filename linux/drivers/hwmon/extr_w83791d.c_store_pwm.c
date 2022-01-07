
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int update_lock; int * pwm; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int * W83791D_REG_PWM ;
 int clamp_val (unsigned long,int ,int) ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83791d_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t store_pwm(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 int nr = sensor_attr->index;
 unsigned long val;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->pwm[nr] = clamp_val(val, 0, 255);
 w83791d_write(client, W83791D_REG_PWM[nr], data->pwm[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
