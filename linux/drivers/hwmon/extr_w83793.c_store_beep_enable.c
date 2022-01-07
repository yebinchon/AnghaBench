
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int beep_enable; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int W83793_REG_OVT_BEEP ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_beep_enable(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val > 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beep_enable = w83793_read_value(client, W83793_REG_OVT_BEEP)
       & 0xfd;
 data->beep_enable |= val << 1;
 w83793_write_value(client, W83793_REG_OVT_BEEP, data->beep_enable);
 mutex_unlock(&data->update_lock);

 return count;
}
