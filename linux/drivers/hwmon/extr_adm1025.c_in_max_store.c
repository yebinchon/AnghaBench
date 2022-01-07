
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1025_data {int update_lock; int * in_max; struct i2c_client* client; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1025_REG_IN_MAX (int) ;
 int IN_TO_REG (long,int ) ;
 struct adm1025_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int * in_scale ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_max_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(attr)->index;
 struct adm1025_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->in_max[index] = IN_TO_REG(val, in_scale[index]);
 i2c_smbus_write_byte_data(client, ADM1025_REG_IN_MAX(index),
      data->in_max[index]);
 mutex_unlock(&data->update_lock);
 return count;
}
