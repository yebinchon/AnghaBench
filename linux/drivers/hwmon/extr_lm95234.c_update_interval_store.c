
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm95234_data {int update_lock; int client; int interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM95234_REG_CONVRATE ;
 struct lm95234_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm95234_update_device (struct lm95234_data*) ;
 int msecs_to_jiffies (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long* update_intervals ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct lm95234_data *data = dev_get_drvdata(dev);
 int ret = lm95234_update_device(data);
 unsigned long val;
 u8 regval;

 if (ret)
  return ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret < 0)
  return ret;

 for (regval = 0; regval < 3; regval++) {
  if (val <= update_intervals[regval])
   break;
 }

 mutex_lock(&data->update_lock);
 data->interval = msecs_to_jiffies(update_intervals[regval]);
 i2c_smbus_write_byte_data(data->client, LM95234_REG_CONVRATE, regval);
 mutex_unlock(&data->update_lock);

 return count;
}
