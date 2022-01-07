
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm95234_data {long thyst; int update_lock; int client; scalar_t__* tcrit1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int LM95234_REG_TCRIT_HYST ;
 long clamp_val (int,int ,int) ;
 struct lm95234_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int lm95234_update_device (struct lm95234_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t tcrit1_hyst_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct lm95234_data *data = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(attr)->index;
 int ret = lm95234_update_device(data);
 long val;

 if (ret)
  return ret;

 ret = kstrtol(buf, 10, &val);
 if (ret < 0)
  return ret;

 val = DIV_ROUND_CLOSEST(val, 1000);
 val = clamp_val((int)data->tcrit1[index] - val, 0, 31);

 mutex_lock(&data->update_lock);
 data->thyst = val;
 i2c_smbus_write_byte_data(data->client, LM95234_REG_TCRIT_HYST, val);
 mutex_unlock(&data->update_lock);

 return count;
}
