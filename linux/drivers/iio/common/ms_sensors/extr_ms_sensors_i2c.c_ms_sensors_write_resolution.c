
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms_ht_dev {int client; } ;
typedef int ssize_t ;


 int MS_SENSORS_CONFIG_REG_WRITE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int ms_sensors_read_config_reg (int ,int*) ;

ssize_t ms_sensors_write_resolution(struct ms_ht_dev *dev_data,
        u8 i)
{
 u8 config_reg;
 int ret;

 ret = ms_sensors_read_config_reg(dev_data->client, &config_reg);
 if (ret)
  return ret;

 config_reg &= 0x7E;
 config_reg |= ((i & 1) << 7) + ((i & 2) >> 1);

 return i2c_smbus_write_byte_data(dev_data->client,
      MS_SENSORS_CONFIG_REG_WRITE,
      config_reg);
}
