
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm95234_data {int valid; int update_lock; int sensor_type; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int LM95234_REG_REM_MODEL ;
 struct lm95234_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm95234_update_device (struct lm95234_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t type_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct lm95234_data *data = dev_get_drvdata(dev);
 unsigned long val;
 u8 mask = to_sensor_dev_attr(attr)->index;
 int ret = lm95234_update_device(data);

 if (ret)
  return ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret < 0)
  return ret;

 if (val != 1 && val != 2)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (val == 1)
  data->sensor_type |= mask;
 else
  data->sensor_type &= ~mask;
 data->valid = 0;
 i2c_smbus_write_byte_data(data->client, LM95234_REG_REM_MODEL,
      data->sensor_type);
 mutex_unlock(&data->update_lock);

 return count;
}
