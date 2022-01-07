
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int update_lock; int ** temp_add; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_ADD_TO_REG_HIGH (long) ;
 int TEMP_ADD_TO_REG_LOW (long) ;
 int ** W83792D_REG_TEMP_ADD ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83792d_write_value (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t store_temp23(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr
   = to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_add[nr][index] = TEMP_ADD_TO_REG_HIGH(val);
 data->temp_add[nr][index+1] = TEMP_ADD_TO_REG_LOW(val);
 w83792d_write_value(client, W83792D_REG_TEMP_ADD[nr][index],
  data->temp_add[nr][index]);
 w83792d_write_value(client, W83792D_REG_TEMP_ADD[nr][index+1],
  data->temp_add[nr][index+1]);
 mutex_unlock(&data->update_lock);

 return count;
}
