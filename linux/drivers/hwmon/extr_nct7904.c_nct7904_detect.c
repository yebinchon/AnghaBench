
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int BANK_SEL_REG ;
 int CHIP_ID_REG ;
 int DEVICE_ID_REG ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int NCT7904_ID ;
 int NUVOTON_ID ;
 int VENDOR_ID_REG ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int nct7904_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter,
         I2C_FUNC_SMBUS_READ_BYTE |
         I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -ENODEV;


 if (i2c_smbus_read_byte_data(client, VENDOR_ID_REG) != NUVOTON_ID ||
     i2c_smbus_read_byte_data(client, CHIP_ID_REG) != NCT7904_ID ||
     (i2c_smbus_read_byte_data(client, DEVICE_ID_REG) & 0xf0) != 0x50 ||
     (i2c_smbus_read_byte_data(client, BANK_SEL_REG) & 0xf8) != 0x00)
  return -ENODEV;

 strlcpy(info->type, "nct7904", I2C_NAME_SIZE);

 return 0;
}
