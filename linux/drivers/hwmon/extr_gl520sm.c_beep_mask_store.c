
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct gl520_data {unsigned long alarm_mask; unsigned long beep_mask; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int GL520_REG_BEEP_MASK ;
 struct gl520_data* dev_get_drvdata (struct device*) ;
 int gl520_write_value (struct i2c_client*,int ,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t beep_mask_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct gl520_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long r;
 int err;

 err = kstrtoul(buf, 10, &r);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 r &= data->alarm_mask;
 data->beep_mask = r;
 gl520_write_value(client, GL520_REG_BEEP_MASK, r);
 mutex_unlock(&data->update_lock);
 return count;
}
