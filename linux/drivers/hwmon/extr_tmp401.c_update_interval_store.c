
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp401_data {int update_interval; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TMP401_CONVERSION_RATE_WRITE ;
 int __fls (unsigned long) ;
 unsigned long clamp_val (unsigned long,int,int) ;
 struct tmp401_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct tmp401_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err, rate;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;
 val = clamp_val(val, 125, 16000);
 rate = 7 - __fls(val * 4 / (125 * 3));
 mutex_lock(&data->update_lock);
 i2c_smbus_write_byte_data(client, TMP401_CONVERSION_RATE_WRITE, rate);
 data->update_interval = (1 << (7 - rate)) * 125;
 mutex_unlock(&data->update_lock);

 return count;
}
