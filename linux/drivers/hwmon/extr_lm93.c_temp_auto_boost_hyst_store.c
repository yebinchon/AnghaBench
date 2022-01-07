
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm93_data {int sfc2; int* boost_hyst; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_AUTO_BOOST_HYST_TO_REG (struct lm93_data*,unsigned long,int,int) ;
 int LM93_REG_BOOST_HYST (int) ;
 int LM93_REG_SFC2 ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_boost_hyst_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
 lm93_write_byte(client, LM93_REG_SFC2, data->sfc2);
 data->boost_hyst[nr/2] = LM93_AUTO_BOOST_HYST_TO_REG(data, val, nr, 1);
 lm93_write_byte(client, LM93_REG_BOOST_HYST(nr),
   data->boost_hyst[nr/2]);
 mutex_unlock(&data->update_lock);
 return count;
}
