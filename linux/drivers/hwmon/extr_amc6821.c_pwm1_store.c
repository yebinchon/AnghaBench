
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int update_lock; int pwm1; struct i2c_client* client; } ;
typedef int ssize_t ;


 int AMC6821_REG_DCY ;
 int clamp_val (long,int ,int) ;
 struct amc6821_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm1_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 struct amc6821_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int ret = kstrtol(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&data->update_lock);
 data->pwm1 = clamp_val(val , 0, 255);
 i2c_smbus_write_byte_data(client, AMC6821_REG_DCY, data->pwm1);
 mutex_unlock(&data->update_lock);
 return count;
}
