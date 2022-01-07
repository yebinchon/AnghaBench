
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm85_data {scalar_t__ type; int cfg5; int* pwm_freq; int update_lock; TYPE_1__* zone; int freq_map_size; int freq_map; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int range; } ;


 int ADT7468_HFPWM ;
 int ADT7468_REG_CFG5 ;
 int FREQ_TO_REG (int ,int ,unsigned long) ;
 int LM85_REG_AFAN_RANGE (int) ;
 scalar_t__ adt7468 ;
 struct lm85_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm85_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_freq_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);





 if (data->type == adt7468 && val >= 11300) {
  data->cfg5 &= ~ADT7468_HFPWM;
  lm85_write_value(client, ADT7468_REG_CFG5, data->cfg5);
 } else {
  data->pwm_freq[nr] = FREQ_TO_REG(data->freq_map,
       data->freq_map_size, val);
  lm85_write_value(client, LM85_REG_AFAN_RANGE(nr),
     (data->zone[nr].range << 4)
     | data->pwm_freq[nr]);
  if (data->type == adt7468) {
   data->cfg5 |= ADT7468_HFPWM;
   lm85_write_value(client, ADT7468_REG_CFG5, data->cfg5);
  }
 }
 mutex_unlock(&data->update_lock);
 return count;
}
