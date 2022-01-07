
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;


 int LM95241_REG_R_CHIP_ID ;
 int LM95241_REG_R_MAN_ID ;
 int NATSEMI_MAN_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm95241_detect(struct i2c_client *new_client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 const char *name;
 int mfg_id, chip_id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 mfg_id = i2c_smbus_read_byte_data(new_client, LM95241_REG_R_MAN_ID);
 if (mfg_id != NATSEMI_MAN_ID)
  return -ENODEV;

 chip_id = i2c_smbus_read_byte_data(new_client, LM95241_REG_R_CHIP_ID);
 switch (chip_id) {
 case 129:
  name = "lm95231";
  break;
 case 128:
  name = "lm95241";
  break;
 default:
  return -ENODEV;
 }


 strlcpy(info->type, name, I2C_NAME_SIZE);
 return 0;
}
