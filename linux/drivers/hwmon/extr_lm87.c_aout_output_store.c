
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int update_lock; int aout; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int AOUT_TO_REG (long) ;
 int LM87_REG_AOUT ;
 struct i2c_client* dev_get_drvdata (struct device*) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtol (char const*,int,long*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t aout_output_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct i2c_client *client = dev_get_drvdata(dev);
 struct lm87_data *data = i2c_get_clientdata(client);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->aout = AOUT_TO_REG(val);
 lm87_write_value(client, LM87_REG_AOUT, data->aout);
 mutex_unlock(&data->update_lock);
 return count;
}
