
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm85_data {int update_lock; TYPE_1__* zone; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int hyst; int limit; } ;


 int HYST_TO_REG (int) ;
 int LM85_REG_AFAN_HYST1 ;
 int LM85_REG_AFAN_HYST2 ;
 int TEMP_FROM_REG (int ) ;
 struct lm85_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int lm85_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_temp_off_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int min;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 min = TEMP_FROM_REG(data->zone[nr].limit);
 data->zone[nr].hyst = HYST_TO_REG(min - val);
 if (nr == 0 || nr == 1) {
  lm85_write_value(client, LM85_REG_AFAN_HYST1,
   (data->zone[0].hyst << 4)
   | data->zone[1].hyst);
 } else {
  lm85_write_value(client, LM85_REG_AFAN_HYST2,
   (data->zone[2].hyst << 4));
 }
 mutex_unlock(&data->update_lock);
 return count;
}
