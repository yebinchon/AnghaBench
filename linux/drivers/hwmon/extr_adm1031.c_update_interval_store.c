
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {unsigned long update_interval; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1031_REG_FAN_FILTER ;
 int ADM1031_UPDATE_RATE_MASK ;
 int ADM1031_UPDATE_RATE_SHIFT ;
 int ARRAY_SIZE (unsigned long*) ;
 int adm1031_read_value (struct i2c_client*,int ) ;
 int adm1031_write_value (struct i2c_client*,int ,int) ;
 struct adm1031_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long* update_intervals ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct adm1031_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int i, err;
 u8 reg;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;





 for (i = 0; i < ARRAY_SIZE(update_intervals) - 1; i++) {
  if (val >= update_intervals[i])
   break;
 }



 reg = adm1031_read_value(client, ADM1031_REG_FAN_FILTER);
 reg &= ~ADM1031_UPDATE_RATE_MASK;
 reg |= i << ADM1031_UPDATE_RATE_SHIFT;
 adm1031_write_value(client, ADM1031_REG_FAN_FILTER, reg);

 mutex_lock(&data->update_lock);
 data->update_interval = update_intervals[i];
 mutex_unlock(&data->update_lock);

 return count;
}
