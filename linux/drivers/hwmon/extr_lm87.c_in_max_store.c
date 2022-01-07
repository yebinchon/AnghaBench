
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm87_data {int update_lock; int * in_max; int * in_scale; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int IN_TO_REG (long,int ) ;
 int LM87_REG_AIN_MAX (int) ;
 int LM87_REG_IN_MAX (int) ;
 struct i2c_client* dev_get_drvdata (struct device*) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtol (char const*,int,long*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_max_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct i2c_client *client = dev_get_drvdata(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->in_max[nr] = IN_TO_REG(val, data->in_scale[nr]);
 lm87_write_value(client, nr < 6 ? LM87_REG_IN_MAX(nr) :
    LM87_REG_AIN_MAX(nr - 6), data->in_max[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
