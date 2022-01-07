
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct lm92_data {int update_lock; int * temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM92_REG_TEMP_HYST ;
 scalar_t__ TEMP_FROM_REG (int ) ;
 int TEMP_TO_REG (scalar_t__) ;
 long clamp_val (long,int,int) ;
 struct lm92_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t t_hyst ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_hyst_store(struct device *dev,
          struct device_attribute *devattr,
          const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm92_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val = clamp_val(val, -120000, 220000);
 mutex_lock(&data->update_lock);
 data->temp[t_hyst] =
  TEMP_TO_REG(TEMP_FROM_REG(data->temp[attr->index]) - val);
 i2c_smbus_write_word_swapped(client, LM92_REG_TEMP_HYST,
         data->temp[t_hyst]);
 mutex_unlock(&data->update_lock);
 return count;
}
