
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm80_data {int update_lock; int ** in; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int IN_TO_REG (long) ;
 int LM80_REG_IN_MAX (int) ;
 int LM80_REG_IN_MIN (int) ;
 struct lm80_data* dev_get_drvdata (struct device*) ;
 int i_min ;
 int kstrtol (char const*,int,long*) ;
 int lm80_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct lm80_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int index = to_sensor_dev_attr_2(attr)->index;
 int nr = to_sensor_dev_attr_2(attr)->nr;
 long val;
 u8 reg;
 int err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 reg = nr == i_min ? LM80_REG_IN_MIN(index) : LM80_REG_IN_MAX(index);

 mutex_lock(&data->update_lock);
 data->in[nr][index] = IN_TO_REG(val);
 lm80_write_value(client, reg, data->in[nr][index]);
 mutex_unlock(&data->update_lock);
 return count;
}
