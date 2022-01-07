
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ms_ht_dev {TYPE_1__* client; int lock; } ;
typedef int ssize_t ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int MS_SENSORS_CONFIG_REG_WRITE ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int kstrtou8 (char const*,int,int*) ;
 int ms_sensors_read_config_reg (TYPE_1__*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

ssize_t ms_sensors_write_heater(struct ms_ht_dev *dev_data,
    const char *buf, size_t len)
{
 u8 val, config_reg;
 int ret;

 ret = kstrtou8(buf, 10, &val);
 if (ret)
  return ret;

 if (val > 1)
  return -EINVAL;

 mutex_lock(&dev_data->lock);
 ret = ms_sensors_read_config_reg(dev_data->client, &config_reg);
 if (ret) {
  mutex_unlock(&dev_data->lock);
  return ret;
 }

 config_reg &= 0xFB;
 config_reg |= val << 2;

 ret = i2c_smbus_write_byte_data(dev_data->client,
     MS_SENSORS_CONFIG_REG_WRITE,
     config_reg);
 mutex_unlock(&dev_data->lock);
 if (ret) {
  dev_err(&dev_data->client->dev, "Unable to write config register\n");
  return ret;
 }

 return len;
}
