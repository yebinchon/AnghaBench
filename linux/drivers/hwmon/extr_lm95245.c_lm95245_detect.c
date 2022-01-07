
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;

 int LM95245_REG_R_CHIP_ID ;
 int LM95245_REG_R_MAN_ID ;

 int MANUFACTURER_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm95245_detect(struct i2c_client *new_client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int address = new_client->addr;
 const char *name;
 int rev, id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 id = i2c_smbus_read_byte_data(new_client, LM95245_REG_R_MAN_ID);
 if (id != MANUFACTURER_ID)
  return -ENODEV;

 rev = i2c_smbus_read_byte_data(new_client, LM95245_REG_R_CHIP_ID);
 switch (rev) {
 case 129:
  if (address != 0x18 && address != 0x29 && address != 0x4c)
   return -ENODEV;
  name = "lm95235";
  break;
 case 128:
  name = "lm95245";
  break;
 default:
  return -ENODEV;
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);
 return 0;
}
