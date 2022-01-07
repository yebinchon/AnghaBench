
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ina209_data {int update_lock; int update_interval; int * regs; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t INA209_CONFIGURATION ;
 scalar_t__ IS_ERR (struct ina209_data*) ;
 int PTR_ERR (struct ina209_data*) ;
 int i2c_smbus_write_word_swapped (int ,size_t,int ) ;
 int ina209_interval_from_reg (int ) ;
 int ina209_reg_from_interval (int ,long) ;
 struct ina209_data* ina209_update_device (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ina209_interval_store(struct device *dev,
         struct device_attribute *da,
         const char *buf, size_t count)
{
 struct ina209_data *data = ina209_update_device(dev);
 long val;
 u16 regval;
 int ret;

 if (IS_ERR(data))
  return PTR_ERR(data);

 ret = kstrtol(buf, 10, &val);
 if (ret < 0)
  return ret;

 mutex_lock(&data->update_lock);
 regval = ina209_reg_from_interval(data->regs[INA209_CONFIGURATION],
       val);
 i2c_smbus_write_word_swapped(data->client, INA209_CONFIGURATION,
         regval);
 data->regs[INA209_CONFIGURATION] = regval;
 data->update_interval = ina209_interval_from_reg(regval);
 mutex_unlock(&data->update_lock);
 return count;
}
