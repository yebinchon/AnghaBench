
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;


 int LM95234_REG_CHIP_ID ;
 int LM95234_REG_CONFIG ;
 int LM95234_REG_CONVRATE ;
 int LM95234_REG_MAN_ID ;
 int LM95234_REG_REM_MODEL ;
 int LM95234_REG_REM_MODEL_STS ;
 int LM95234_REG_STATUS ;
 int NATSEMI_MAN_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm95234_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 u8 config_mask, model_mask;
 int mfg_id, chip_id, val;
 const char *name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 mfg_id = i2c_smbus_read_byte_data(client, LM95234_REG_MAN_ID);
 if (mfg_id != NATSEMI_MAN_ID)
  return -ENODEV;

 chip_id = i2c_smbus_read_byte_data(client, LM95234_REG_CHIP_ID);
 switch (chip_id) {
 case 129:
  if (address != 0x18 && address != 0x2a && address != 0x2b)
   return -ENODEV;
  config_mask = 0xbf;
  model_mask = 0xf9;
  name = "lm95233";
  break;
 case 128:
  if (address != 0x18 && address != 0x4d && address != 0x4e)
   return -ENODEV;
  config_mask = 0xbc;
  model_mask = 0xe1;
  name = "lm95234";
  break;
 default:
  return -ENODEV;
 }

 val = i2c_smbus_read_byte_data(client, LM95234_REG_STATUS);
 if (val & 0x30)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, LM95234_REG_CONFIG);
 if (val & config_mask)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, LM95234_REG_CONVRATE);
 if (val & 0xfc)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, LM95234_REG_REM_MODEL);
 if (val & model_mask)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, LM95234_REG_REM_MODEL_STS);
 if (val & model_mask)
  return -ENODEV;

 strlcpy(info->type, name, I2C_NAME_SIZE);
 return 0;
}
