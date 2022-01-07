
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;
struct i2c_board_info {int type; } ;


 int ADC128_REG_BUSY_STATUS ;
 int ADC128_REG_CONFIG ;
 int ADC128_REG_CONFIG_ADV ;
 int ADC128_REG_CONV_RATE ;
 int ADC128_REG_DEV_ID ;
 int ADC128_REG_MAN_ID ;
 int ADC128_REG_ONESHOT ;
 int ADC128_REG_SHUTDOWN ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (int ,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int adc128_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 int man_id, dev_id;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 man_id = i2c_smbus_read_byte_data(client, ADC128_REG_MAN_ID);
 dev_id = i2c_smbus_read_byte_data(client, ADC128_REG_DEV_ID);
 if (man_id != 0x01 || dev_id != 0x09)
  return -ENODEV;


 if (i2c_smbus_read_byte_data(client, ADC128_REG_CONFIG) & 0xf4)
  return -ENODEV;
 if (i2c_smbus_read_byte_data(client, ADC128_REG_CONV_RATE) & 0xfe)
  return -ENODEV;
 if (i2c_smbus_read_byte_data(client, ADC128_REG_ONESHOT) & 0xfe)
  return -ENODEV;
 if (i2c_smbus_read_byte_data(client, ADC128_REG_SHUTDOWN) & 0xfe)
  return -ENODEV;
 if (i2c_smbus_read_byte_data(client, ADC128_REG_CONFIG_ADV) & 0xf8)
  return -ENODEV;
 if (i2c_smbus_read_byte_data(client, ADC128_REG_BUSY_STATUS) & 0xfc)
  return -ENODEV;

 strlcpy(info->type, "adc128d818", I2C_NAME_SIZE);

 return 0;
}
