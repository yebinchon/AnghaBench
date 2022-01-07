
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct f75375_data {int update_lock; int * pwm; int * pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 scalar_t__ auto_mode_enabled (int ) ;
 int clamp_val (unsigned long,int ,int) ;
 int duty_mode_enabled (int ) ;
 int f75375_write_pwm (struct i2c_client*,int) ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct f75375_data *data = i2c_get_clientdata(client);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (auto_mode_enabled(data->pwm_enable[nr]) ||
     !duty_mode_enabled(data->pwm_enable[nr]))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->pwm[nr] = clamp_val(val, 0, 255);
 f75375_write_pwm(client, nr);
 mutex_unlock(&data->update_lock);
 return count;
}
