
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct emc2103_data {long* temp_min; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 long DIV_ROUND_CLOSEST (int ,int) ;
 int * REG_TEMP_MIN ;
 int clamp_val (long,int,int) ;
 struct emc2103_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev, struct device_attribute *da,
         const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct emc2103_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;

 int result = kstrtol(buf, 10, &val);
 if (result < 0)
  return result;

 val = DIV_ROUND_CLOSEST(clamp_val(val, -63000, 127000), 1000);

 mutex_lock(&data->update_lock);
 data->temp_min[nr] = val;
 i2c_smbus_write_byte_data(client, REG_TEMP_MIN[nr], val);
 mutex_unlock(&data->update_lock);

 return count;
}
