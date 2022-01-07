
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc654_data {int update_lock; int config; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int TC654_REG_CONFIG ;
 int TC654_REG_CONFIG_DUTYC ;
 struct tc654_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm_mode_store(struct device *dev, struct device_attribute *da,
         const char *buf, size_t count)
{
 struct tc654_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 if (val != 0 && val != 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 if (val)
  data->config |= TC654_REG_CONFIG_DUTYC;
 else
  data->config &= ~TC654_REG_CONFIG_DUTYC;

 ret = i2c_smbus_write_byte_data(client, TC654_REG_CONFIG, data->config);

 mutex_unlock(&data->update_lock);
 return ret < 0 ? ret : count;
}
