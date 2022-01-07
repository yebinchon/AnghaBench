
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int type; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 int REG_BANK ;
 int REG_CHIP_ID ;
 int REG_TEMP_LSB ;
 int REG_TEMP_PECI_LSB ;
 int REG_VENDOR_ID ;
 int REG_VERSION_ID ;
 int REG_VOLTAGE_LOW ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int nct7802_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 int reg;





 reg = i2c_smbus_read_byte_data(client, REG_BANK);
 if (reg != 0x00)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, REG_VENDOR_ID);
 if (reg != 0x50)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, REG_CHIP_ID);
 if (reg != 0xc3)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, REG_VERSION_ID);
 if (reg < 0 || (reg & 0xf0) != 0x20)
  return -ENODEV;


 reg = i2c_smbus_read_byte_data(client, REG_TEMP_LSB);
 if (reg < 0 || (reg & 0x1f))
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, REG_TEMP_PECI_LSB);
 if (reg < 0 || (reg & 0x3f))
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, REG_VOLTAGE_LOW);
 if (reg < 0 || (reg & 0x3f))
  return -ENODEV;

 strlcpy(info->type, "nct7802", I2C_NAME_SIZE);
 return 0;
}
