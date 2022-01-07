
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
 int LM80_REG_ALARM2 ;
 int LM80_REG_CONFIG ;
 int LM96080_REG_CONV_RATE ;
 int LM96080_REG_DEV_ID ;
 int LM96080_REG_MAN_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int lm80_read_value (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm80_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int i, cur, man_id, dev_id;
 const char *name = ((void*)0);

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if ((lm80_read_value(client, LM80_REG_ALARM2) & 0xc0)
  || (lm80_read_value(client, LM80_REG_CONFIG) & 0x80))
  return -ENODEV;






 man_id = lm80_read_value(client, LM96080_REG_MAN_ID);
 dev_id = lm80_read_value(client, LM96080_REG_DEV_ID);
 if (man_id == 0x01 && dev_id == 0x08) {

  if (lm80_read_value(client, LM96080_REG_CONV_RATE) & 0xfe)
   return -ENODEV;

  name = "lm96080";
 } else {

  for (i = 0x2a; i <= 0x3d; i++) {
   cur = i2c_smbus_read_byte_data(client, i);
   if ((i2c_smbus_read_byte_data(client, i + 0x40) != cur)
    || (i2c_smbus_read_byte_data(client, i + 0x80) != cur)
    || (i2c_smbus_read_byte_data(client, i + 0xc0) != cur))
    return -ENODEV;
  }

  name = "lm80";
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
