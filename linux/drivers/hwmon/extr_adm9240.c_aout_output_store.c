
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int update_lock; int aout; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM9240_REG_ANALOG_OUT ;
 int AOUT_TO_REG (long) ;
 struct adm9240_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t aout_output_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct adm9240_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->aout = AOUT_TO_REG(val);
 i2c_smbus_write_byte_data(client, ADM9240_REG_ANALOG_OUT, data->aout);
 mutex_unlock(&data->update_lock);
 return count;
}
