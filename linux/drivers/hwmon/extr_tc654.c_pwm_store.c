
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc654_data {int update_lock; int duty_cycle; int config; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int TC654_REG_CONFIG ;
 int TC654_REG_CONFIG_SDM ;
 int TC654_REG_DUTY_CYCLE ;
 struct tc654_data* dev_get_drvdata (struct device*) ;
 int find_closest (unsigned long,int ,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tc654_pwm_map ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev, struct device_attribute *da,
    const char *buf, size_t count)
{
 struct tc654_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;
 if (val > 255)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 if (val == 0)
  data->config |= TC654_REG_CONFIG_SDM;
 else
  data->config &= ~TC654_REG_CONFIG_SDM;

 data->duty_cycle = find_closest(val, tc654_pwm_map,
     ARRAY_SIZE(tc654_pwm_map));

 ret = i2c_smbus_write_byte_data(client, TC654_REG_CONFIG, data->config);
 if (ret < 0)
  goto out;

 ret = i2c_smbus_write_byte_data(client, TC654_REG_DUTY_CYCLE,
     data->duty_cycle);

out:
 mutex_unlock(&data->update_lock);
 return ret < 0 ? ret : count;
}
