
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int fan1_div; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int AMC6821_CONF4_PSPR ;
 int AMC6821_REG_CONF4 ;
 size_t EINVAL ;
 size_t EIO ;
 int dev_err (int *,char*) ;
 struct amc6821_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t fan1_div_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct amc6821_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int config = kstrtol(buf, 10, &val);
 if (config)
  return config;

 mutex_lock(&data->update_lock);
 config = i2c_smbus_read_byte_data(client, AMC6821_REG_CONF4);
 if (config < 0) {
  dev_err(&client->dev,
   "Error reading configuration register, aborting.\n");
  count = config;
  goto EXIT;
 }
 switch (val) {
 case 2:
  config &= ~AMC6821_CONF4_PSPR;
  data->fan1_div = 2;
  break;
 case 4:
  config |= AMC6821_CONF4_PSPR;
  data->fan1_div = 4;
  break;
 default:
  count = -EINVAL;
  goto EXIT;
 }
 if (i2c_smbus_write_byte_data(client, AMC6821_REG_CONF4, config)) {
  dev_err(&client->dev,
   "Configuration register write error, aborting.\n");
  count = -EIO;
 }
EXIT:
 mutex_unlock(&data->update_lock);
 return count;
}
