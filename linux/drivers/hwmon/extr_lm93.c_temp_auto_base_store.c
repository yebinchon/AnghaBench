
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * base; } ;
struct lm93_data {int update_lock; TYPE_1__ block10; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;


 int LM93_REG_TEMP_BASE (int) ;
 int LM93_TEMP_TO_REG (long) ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int lm93_write_byte (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_base_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->block10.base[nr] = LM93_TEMP_TO_REG(val);
 lm93_write_byte(client, LM93_REG_TEMP_BASE(nr), data->block10.base[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
