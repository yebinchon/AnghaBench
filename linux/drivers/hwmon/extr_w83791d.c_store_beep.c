
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int beep_mask; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int * W83791D_REG_BEEP_CTRL ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83791d_read (struct i2c_client*,int ) ;
 int w83791d_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t store_beep(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr =
      to_sensor_dev_attr(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 int bitnr = sensor_attr->index;
 int bytenr = bitnr / 8;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 val = val ? 1 : 0;

 mutex_lock(&data->update_lock);

 data->beep_mask &= ~(0xff << (bytenr * 8));
 data->beep_mask |= w83791d_read(client, W83791D_REG_BEEP_CTRL[bytenr])
  << (bytenr * 8);

 data->beep_mask &= ~(1 << bitnr);
 data->beep_mask |= val << bitnr;

 w83791d_write(client, W83791D_REG_BEEP_CTRL[bytenr],
  (data->beep_mask >> (bytenr * 8)) & 0xff);

 mutex_unlock(&data->update_lock);

 return count;
}
