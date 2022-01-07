
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl520_data {int update_lock; int * temp_max_hyst; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int * GL520_REG_TEMP_MAX_HYST ;
 int TEMP_TO_REG (long) ;
 struct gl520_data* dev_get_drvdata (struct device*) ;
 int gl520_write_value (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_hyst_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct gl520_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int n = to_sensor_dev_attr(attr)->index;
 long v;
 int err;

 err = kstrtol(buf, 10, &v);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_max_hyst[n] = TEMP_TO_REG(v);
 gl520_write_value(client, GL520_REG_TEMP_MAX_HYST[n],
     data->temp_max_hyst[n]);
 mutex_unlock(&data->update_lock);
 return count;
}
