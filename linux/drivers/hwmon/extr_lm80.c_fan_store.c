
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm80_data {int update_lock; int ** fan; int * fan_div; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int LM80_REG_FAN_MIN (int) ;
 struct lm80_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm80_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 int index = to_sensor_dev_attr_2(attr)->index;
 int nr = to_sensor_dev_attr_2(attr)->nr;
 struct lm80_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 data->fan[nr][index] = FAN_TO_REG(val,
       DIV_FROM_REG(data->fan_div[index]));
 lm80_write_value(client, LM80_REG_FAN_MIN(index + 1),
    data->fan[nr][index]);
 mutex_unlock(&data->update_lock);
 return count;
}
