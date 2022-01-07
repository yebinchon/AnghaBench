
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int update_lock; int * temp1; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP1_TO_REG (long) ;
 int * W83792D_REG_TEMP1 ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83792d_write_value (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t store_temp1(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp1[nr] = TEMP1_TO_REG(val);
 w83792d_write_value(client, W83792D_REG_TEMP1[nr],
  data->temp1[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
