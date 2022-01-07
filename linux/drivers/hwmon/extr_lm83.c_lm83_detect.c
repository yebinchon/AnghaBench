
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM83_REG_R_CHIP_ID ;
 int LM83_REG_R_CONFIG ;
 int LM83_REG_R_MAN_ID ;
 int LM83_REG_R_STATUS1 ;
 int LM83_REG_R_STATUS2 ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm83_detect(struct i2c_client *new_client,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 const char *name;
 u8 man_id, chip_id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if ((i2c_smbus_read_byte_data(new_client, LM83_REG_R_STATUS1) & 0xA8) ||
     (i2c_smbus_read_byte_data(new_client, LM83_REG_R_STATUS2) & 0x48) ||
     (i2c_smbus_read_byte_data(new_client, LM83_REG_R_CONFIG) & 0x41)) {
  dev_dbg(&adapter->dev, "LM83 detection failed at 0x%02x\n",
   new_client->addr);
  return -ENODEV;
 }


 man_id = i2c_smbus_read_byte_data(new_client, LM83_REG_R_MAN_ID);
 if (man_id != 0x01)
  return -ENODEV;

 chip_id = i2c_smbus_read_byte_data(new_client, LM83_REG_R_CHIP_ID);
 switch (chip_id) {
 case 0x03:
  name = "lm83";
  break;
 case 0x01:
  name = "lm82";
  break;
 default:

  dev_info(&adapter->dev,
    "Unsupported chip (man_id=0x%02X, chip_id=0x%02X)\n",
    man_id, chip_id);
  return -ENODEV;
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
