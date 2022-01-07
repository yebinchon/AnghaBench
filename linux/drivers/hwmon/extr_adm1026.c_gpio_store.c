
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {long gpio; int alarms; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_GPIO_STATUS_0_7 ;
 int ADM1026_REG_GPIO_STATUS_8_15 ;
 int ADM1026_REG_STATUS4 ;
 int adm1026_write_value (struct i2c_client*,int ,long) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t gpio_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long gpio;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->gpio = val & 0x1ffff;
 gpio = data->gpio;
 adm1026_write_value(client, ADM1026_REG_GPIO_STATUS_0_7, gpio & 0xff);
 gpio >>= 8;
 adm1026_write_value(client, ADM1026_REG_GPIO_STATUS_8_15, gpio & 0xff);
 gpio = ((gpio >> 1) & 0x80) | (data->alarms >> 24 & 0x7f);
 adm1026_write_value(client, ADM1026_REG_STATUS4, gpio & 0xff);
 mutex_unlock(&data->update_lock);
 return count;
}
