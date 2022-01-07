
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long force_pwm_max; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7470_FSPD_MASK ;
 int ADT7470_REG_CFG ;
 size_t EINVAL ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t force_pwm_max_store(struct device *dev,
       struct device_attribute *devattr,
       const char *buf, size_t count)
{
 struct adt7470_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;
 u8 reg;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 mutex_lock(&data->lock);
 data->force_pwm_max = temp;
 reg = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG);
 if (temp)
  reg |= ADT7470_FSPD_MASK;
 else
  reg &= ~ADT7470_FSPD_MASK;
 i2c_smbus_write_byte_data(client, ADT7470_REG_CFG, reg);
 mutex_unlock(&data->lock);

 return count;
}
