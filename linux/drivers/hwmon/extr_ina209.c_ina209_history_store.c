
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sensor_device_attribute {int index; } ;
struct ina209_data {int valid; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 struct ina209_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 int * ina209_reset_history_regs ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ina209_history_store(struct device *dev,
        struct device_attribute *da,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ina209_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u32 mask = attr->index;
 long val;
 int i, ret;

 ret = kstrtol(buf, 10, &val);
 if (ret < 0)
  return ret;

 mutex_lock(&data->update_lock);
 for (i = 0; i < ARRAY_SIZE(ina209_reset_history_regs); i++) {
  if (mask & (1 << i))
   i2c_smbus_write_word_swapped(client,
     ina209_reset_history_regs[i], 1);
 }
 data->valid = 0;
 mutex_unlock(&data->update_lock);
 return count;
}
