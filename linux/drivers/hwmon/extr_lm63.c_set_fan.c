
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int* fan; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_TO_REG (unsigned long) ;
 int LM63_REG_TACH_LIMIT_LSB ;
 int LM63_REG_TACH_LIMIT_MSB ;
 struct lm63_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t set_fan(struct device *dev, struct device_attribute *dummy,
         const char *buf, size_t count)
{
 struct lm63_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->fan[1] = FAN_TO_REG(val);
 i2c_smbus_write_byte_data(client, LM63_REG_TACH_LIMIT_LSB,
      data->fan[1] & 0xFF);
 i2c_smbus_write_byte_data(client, LM63_REG_TACH_LIMIT_MSB,
      data->fan[1] >> 8);
 mutex_unlock(&data->update_lock);
 return count;
}
