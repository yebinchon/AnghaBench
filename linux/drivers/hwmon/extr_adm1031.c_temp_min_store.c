
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int update_lock; int * temp_min; struct i2c_client* client; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1031_REG_TEMP_MIN (int) ;
 int TEMP_TO_REG (long) ;
 int adm1031_write_value (struct i2c_client*,int ,int ) ;
 long clamp_val (long,int,int) ;
 struct adm1031_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct adm1031_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int nr = to_sensor_dev_attr(attr)->index;
 long val;
 int ret;

 ret = kstrtol(buf, 10, &val);
 if (ret)
  return ret;

 val = clamp_val(val, -55000, 127000);
 mutex_lock(&data->update_lock);
 data->temp_min[nr] = TEMP_TO_REG(val);
 adm1031_write_value(client, ADM1031_REG_TEMP_MIN(nr),
       data->temp_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
