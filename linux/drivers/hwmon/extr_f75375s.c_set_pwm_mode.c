
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {scalar_t__ kind; unsigned long* pwm_mode; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 char F75375_FAN_CTRL_LINEAR (int) ;
 char F75375_REG_CONFIG1 ;
 char F75375_REG_FAN_TIMER ;
 char F75387_FAN_CTRL_LINEAR (int) ;
 scalar_t__ f75373 ;
 int f75375_read8 (struct i2c_client*,char) ;
 int f75375_write8 (struct i2c_client*,char,int) ;
 scalar_t__ f75387 ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_mode(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct f75375_data *data = i2c_get_clientdata(client);
 unsigned long val;
 int err;
 u8 conf;
 char reg, ctrl;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (!(val == 0 || val == 1))
  return -EINVAL;


 if (data->kind == f75373 && val == 0)
  return -EINVAL;


 if (data->kind == f75387) {
  reg = F75375_REG_FAN_TIMER;
  ctrl = F75387_FAN_CTRL_LINEAR(nr);
 } else {
  reg = F75375_REG_CONFIG1;
  ctrl = F75375_FAN_CTRL_LINEAR(nr);
 }

 mutex_lock(&data->update_lock);
 conf = f75375_read8(client, reg);
 conf &= ~(1 << ctrl);

 if (val == 0)
  conf |= (1 << ctrl);

 f75375_write8(client, reg, conf);
 data->pwm_mode[nr] = val;
 mutex_unlock(&data->update_lock);
 return count;
}
