
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ds1621_data {int conf; unsigned long update_interval; int zbits; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t s32 ;


 int ARRAY_SIZE (unsigned long*) ;
 int DS1621_REG_CONF ;
 int DS1621_REG_CONFIG_RESOL ;
 int DS1621_REG_CONFIG_RESOL_SHIFT ;
 struct ds1621_data* dev_get_drvdata (struct device*) ;
 unsigned long* ds1721_convrates ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *da,
         const char *buf, size_t count)
{
 struct ds1621_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long convrate;
 s32 err;
 int resol = 0;

 err = kstrtoul(buf, 10, &convrate);
 if (err)
  return err;


 while (resol < (ARRAY_SIZE(ds1721_convrates) - 1) &&
        convrate > ds1721_convrates[resol])
  resol++;

 mutex_lock(&data->update_lock);
 data->conf = i2c_smbus_read_byte_data(client, DS1621_REG_CONF);
 data->conf &= ~DS1621_REG_CONFIG_RESOL;
 data->conf |= (resol << DS1621_REG_CONFIG_RESOL_SHIFT);
 i2c_smbus_write_byte_data(client, DS1621_REG_CONF, data->conf);
 data->update_interval = ds1721_convrates[resol];
 data->zbits = 7 - resol;
 mutex_unlock(&data->update_lock);

 return count;
}
