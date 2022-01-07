
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int LM92_REG_CONFIG ;
 int LM92_REG_MAN_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int pr_info (char*) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int lm92_detect(struct i2c_client *new_client,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 u8 config;
 u16 man_id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA
         | I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 config = i2c_smbus_read_byte_data(new_client, LM92_REG_CONFIG);
 man_id = i2c_smbus_read_word_data(new_client, LM92_REG_MAN_ID);

 if ((config & 0xe0) == 0x00 && man_id == 0x0180)
  pr_info("lm92: Found National Semiconductor LM92 chip\n");
 else
  return -ENODEV;

 strlcpy(info->type, "lm92", I2C_NAME_SIZE);

 return 0;
}
