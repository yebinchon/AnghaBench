
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83l786ng_data {int update_lock; int ** temp; struct i2c_client* client; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_TO_REG (long) ;
 int ** W83L786NG_REG_TEMP ;
 struct w83l786ng_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t
store_temp(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83l786ng_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp[nr][index] = TEMP_TO_REG(val);
 w83l786ng_write_value(client, W83L786NG_REG_TEMP[nr][index],
         data->temp[nr][index]);
 mutex_unlock(&data->update_lock);

 return count;
}
