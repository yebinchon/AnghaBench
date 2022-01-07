
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {int update_lock; int control; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PCF8591_CONTROL_AOEF ;
 struct pcf8591_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t out0_enable_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct pcf8591_data *data = i2c_get_clientdata(client);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 if (val)
  data->control |= PCF8591_CONTROL_AOEF;
 else
  data->control &= ~PCF8591_CONTROL_AOEF;
 i2c_smbus_write_byte(client, data->control);
 mutex_unlock(&data->update_lock);
 return count;
}
