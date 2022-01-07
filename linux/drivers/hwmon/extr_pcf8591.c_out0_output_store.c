
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {unsigned long aout; int control; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct pcf8591_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t out0_output_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 unsigned long val;
 struct i2c_client *client = to_i2c_client(dev);
 struct pcf8591_data *data = i2c_get_clientdata(client);
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 val /= 10;
 if (val > 255)
  return -EINVAL;

 data->aout = val;
 i2c_smbus_write_byte_data(client, data->control, data->aout);
 return count;
}
