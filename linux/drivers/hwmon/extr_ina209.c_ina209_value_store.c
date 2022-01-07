
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct ina209_data {int* regs; int update_lock; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct ina209_data*) ;
 int PTR_ERR (struct ina209_data*) ;
 int i2c_smbus_write_word_swapped (int ,int,int) ;
 int ina209_to_reg (int,int,long) ;
 struct ina209_data* ina209_update_device (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ina209_value_store(struct device *dev,
      struct device_attribute *da,
      const char *buf, size_t count)
{
 struct ina209_data *data = ina209_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int reg = attr->index;
 long val;
 int ret;

 if (IS_ERR(data))
  return PTR_ERR(data);

 ret = kstrtol(buf, 10, &val);
 if (ret < 0)
  return ret;

 mutex_lock(&data->update_lock);
 ret = ina209_to_reg(reg, data->regs[reg], val);
 if (ret < 0) {
  count = ret;
  goto abort;
 }
 i2c_smbus_write_word_swapped(data->client, reg, ret);
 data->regs[reg] = ret;
abort:
 mutex_unlock(&data->update_lock);
 return count;
}
