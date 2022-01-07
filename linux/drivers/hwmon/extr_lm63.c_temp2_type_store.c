
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm63_data {int trutherm; int update_lock; scalar_t__ valid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int LM96163_REG_TRUTHERM ;
 struct lm63_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t temp2_type_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct lm63_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int ret;
 u8 reg;

 ret = kstrtoul(buf, 10, &val);
 if (ret < 0)
  return ret;
 if (val != 1 && val != 2)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->trutherm = val == 1;
 reg = i2c_smbus_read_byte_data(client, LM96163_REG_TRUTHERM) & ~0x02;
 i2c_smbus_write_byte_data(client, LM96163_REG_TRUTHERM,
      reg | (data->trutherm ? 0x02 : 0x00));
 data->valid = 0;
 mutex_unlock(&data->update_lock);

 return count;
}
