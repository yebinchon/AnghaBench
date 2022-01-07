
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {long gpio_mask; int alarm_mask; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_GPIO_MASK_0_7 ;
 int ADM1026_REG_GPIO_MASK_8_15 ;
 int ADM1026_REG_MASK1 ;
 int adm1026_write_value (struct i2c_client*,int ,long) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t gpio_mask_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long mask;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->gpio_mask = val & 0x1ffff;
 mask = data->gpio_mask;
 adm1026_write_value(client, ADM1026_REG_GPIO_MASK_0_7, mask & 0xff);
 mask >>= 8;
 adm1026_write_value(client, ADM1026_REG_GPIO_MASK_8_15, mask & 0xff);
 mask = ((mask >> 1) & 0x80) | (data->alarm_mask >> 24 & 0x7f);
 adm1026_write_value(client, ADM1026_REG_MASK1, mask & 0xff);
 mutex_unlock(&data->update_lock);
 return count;
}
