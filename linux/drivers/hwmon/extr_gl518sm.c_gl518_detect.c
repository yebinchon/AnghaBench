
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int GL518_REG_CHIP_ID ;
 int GL518_REG_CONF ;
 int GL518_REG_REVISION ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int gl518_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int rev;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;


 if ((gl518_read_value(client, GL518_REG_CHIP_ID) != 0x80)
  || (gl518_read_value(client, GL518_REG_CONF) & 0x80))
  return -ENODEV;


 rev = gl518_read_value(client, GL518_REG_REVISION);
 if (rev != 0x00 && rev != 0x80)
  return -ENODEV;

 strlcpy(info->type, "gl518sm", I2C_NAME_SIZE);

 return 0;
}
