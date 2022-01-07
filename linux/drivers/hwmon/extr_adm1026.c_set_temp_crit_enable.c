
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {unsigned long config1; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_CONFIG1 ;
 unsigned long CFG1_THERM_HOT ;
 int EINVAL ;
 int adm1026_write_value (struct i2c_client*,int ,unsigned long) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t set_temp_crit_enable(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val > 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->config1 = (data->config1 & ~CFG1_THERM_HOT) | (val << 4);
 adm1026_write_value(client, ADM1026_REG_CONFIG1, data->config1);
 mutex_unlock(&data->update_lock);

 return count;
}
