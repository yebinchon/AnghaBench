
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {int analog_out; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int THMC50_REG_ANALOG_OUT ;
 int THMC50_REG_CONF ;
 int THMC50_REG_CONF_nFANOFF ;
 int clamp_val (unsigned long,int ,int) ;
 struct thmc50_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t analog_out_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct thmc50_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int config;
 unsigned long tmp;
 int err;

 err = kstrtoul(buf, 10, &tmp);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->analog_out = clamp_val(tmp, 0, 255);
 i2c_smbus_write_byte_data(client, THMC50_REG_ANALOG_OUT,
      data->analog_out);

 config = i2c_smbus_read_byte_data(client, THMC50_REG_CONF);
 if (data->analog_out == 0)
  config &= ~THMC50_REG_CONF_nFANOFF;
 else
  config |= THMC50_REG_CONF_nFANOFF;
 i2c_smbus_write_byte_data(client, THMC50_REG_CONF, config);

 mutex_unlock(&data->update_lock);
 return count;
}
