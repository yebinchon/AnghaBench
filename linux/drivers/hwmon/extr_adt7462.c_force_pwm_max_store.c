
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int lock; int cfg2; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7462_FSPD_MASK ;
 int ADT7462_REG_CFG2 ;
 size_t EINVAL ;
 struct adt7462_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t force_pwm_max_store(struct device *dev,
       struct device_attribute *devattr,
       const char *buf, size_t count)
{
 struct adt7462_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;
 u8 reg;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 mutex_lock(&data->lock);
 reg = i2c_smbus_read_byte_data(client, ADT7462_REG_CFG2);
 if (temp)
  reg |= ADT7462_FSPD_MASK;
 else
  reg &= ~ADT7462_FSPD_MASK;
 data->cfg2 = reg;
 i2c_smbus_write_byte_data(client, ADT7462_REG_CFG2, reg);
 mutex_unlock(&data->lock);

 return count;
}
