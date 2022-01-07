
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int update_lock; int ** temp; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ** W83795_REG_TEMP ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temp_to_reg (long,int,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83795_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t
store_temp(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 long tmp;

 if (kstrtol(buf, 10, &tmp) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->temp[index][nr] = temp_to_reg(tmp, -128, 127);
 w83795_write(client, W83795_REG_TEMP[index][nr], data->temp[index][nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
