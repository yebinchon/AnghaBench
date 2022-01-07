
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int update_lock; int analog_out; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_DAC ;
 int DAC_TO_REG (long) ;
 int adm1026_write_value (struct i2c_client*,int ,int ) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t analog_out_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->analog_out = DAC_TO_REG(val);
 adm1026_write_value(client, ADM1026_REG_DAC, data->analog_out);
 mutex_unlock(&data->update_lock);
 return count;
}
