
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83791d_data {int* temp_target; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int TARGET_TEMP_TO_REG (long) ;
 int * W83791D_REG_TEMP_TARGET ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83791d_read (struct i2c_client*,int ) ;
 int w83791d_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t store_temp_target(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 int nr = sensor_attr->index;
 long val;
 u8 target_mask;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->temp_target[nr] = TARGET_TEMP_TO_REG(val);
 target_mask = w83791d_read(client,
    W83791D_REG_TEMP_TARGET[nr]) & 0x80;
 w83791d_write(client, W83791D_REG_TEMP_TARGET[nr],
    data->temp_target[nr] | target_mask);
 mutex_unlock(&data->update_lock);
 return count;
}
