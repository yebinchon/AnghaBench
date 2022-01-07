
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ADM1029_REG_CHIP_ID ;
 int ADM1029_REG_MAN_ID ;
 int ADM1029_REG_NB_FAN_SUPPORT ;
 int ADM1029_REG_TEMP_DEVICES_INSTALLED ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int pr_info (char*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int adm1029_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 u8 man_id, chip_id, temp_devices_installed, nb_fan_support;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 man_id = i2c_smbus_read_byte_data(client, ADM1029_REG_MAN_ID);
 chip_id = i2c_smbus_read_byte_data(client, ADM1029_REG_CHIP_ID);
 temp_devices_installed = i2c_smbus_read_byte_data(client,
     ADM1029_REG_TEMP_DEVICES_INSTALLED);
 nb_fan_support = i2c_smbus_read_byte_data(client,
        ADM1029_REG_NB_FAN_SUPPORT);

 if (man_id != 0x41 || (temp_devices_installed & 0xf9) != 0x01 ||
     nb_fan_support != 0x03)
  return -ENODEV;

 if ((chip_id & 0xF0) != 0x00) {




  pr_info("Unknown major revision %x, please let us know\n",
   chip_id);
  return -ENODEV;
 }

 strlcpy(info->type, "adm1029", I2C_NAME_SIZE);

 return 0;
}
