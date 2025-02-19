
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct f75375_data {scalar_t__ kind; int update_lock; int * fan_target; int * pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int F75375_REG_FAN_EXP (int) ;
 scalar_t__ auto_mode_enabled (int ) ;
 scalar_t__ duty_mode_enabled (int ) ;
 int f75375_write16 (struct i2c_client*,int ,int ) ;
 scalar_t__ f75387 ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm_to_reg (unsigned long) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_target(struct device *dev, struct device_attribute *attr,
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

 if (auto_mode_enabled(data->pwm_enable[nr]))
  return -EINVAL;
 if (data->kind == f75387 && duty_mode_enabled(data->pwm_enable[nr]))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->fan_target[nr] = rpm_to_reg(val);
 f75375_write16(client, F75375_REG_FAN_EXP(nr), data->fan_target[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
