
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int update_lock; int * temp_min; struct i2c_client* client; } ;
typedef int ssize_t ;


 int * ADM1026_REG_TEMP_MIN ;
 int TEMP_TO_REG (long) ;
 int adm1026_write_value (struct i2c_client*,int ,int ) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_min[nr] = TEMP_TO_REG(val);
 adm1026_write_value(client, ADM1026_REG_TEMP_MIN[nr],
  data->temp_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
