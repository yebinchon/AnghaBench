
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int beep_enable; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int GL520_REG_BEEP_ENABLE ;
 struct gl520_data* dev_get_drvdata (struct device*) ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t beep_enable_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct gl520_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 r;
 unsigned long v;
 int err;

 err = kstrtoul(buf, 10, &v);
 if (err)
  return err;

 r = (v ? 0 : 1);

 mutex_lock(&data->update_lock);
 data->beep_enable = !r;
 gl520_write_value(client, GL520_REG_BEEP_ENABLE,
     (gl520_read_value(client, GL520_REG_BEEP_ENABLE)
      & ~0x04) | (r << 2));
 mutex_unlock(&data->update_lock);
 return count;
}
