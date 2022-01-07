
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm77_data {long* temp; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM77_TEMP_MAX ;
 int LM77_TEMP_MIN ;
 int LM77_TEMP_TO_REG (long) ;
 long clamp_val (long,int ,int ) ;
 struct lm77_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int lm77_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * temp_regs ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm77_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int nr = attr->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val = clamp_val(val, LM77_TEMP_MIN, LM77_TEMP_MAX);
 mutex_lock(&data->update_lock);
 data->temp[nr] = val;
 lm77_write_value(client, temp_regs[nr], LM77_TEMP_TO_REG(val));
 mutex_unlock(&data->update_lock);
 return count;
}
