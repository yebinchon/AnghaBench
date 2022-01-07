
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int LM73_ID ;
 int LM73_REG_CONF ;
 int LM73_REG_CTRL ;
 int LM73_REG_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int lm73_detect(struct i2c_client *new_client,
   struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int id, ctrl, conf;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
     I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;





 ctrl = i2c_smbus_read_byte_data(new_client, LM73_REG_CTRL);
 if (ctrl < 0 || (ctrl & 0x10))
  return -ENODEV;

 conf = i2c_smbus_read_byte_data(new_client, LM73_REG_CONF);
 if (conf < 0 || (conf & 0x0c))
  return -ENODEV;

 id = i2c_smbus_read_byte_data(new_client, LM73_REG_ID);
 if (id < 0 || id != (LM73_ID & 0xff))
  return -ENODEV;


 id = i2c_smbus_read_word_data(new_client, LM73_REG_ID);
 if (id < 0 || id != LM73_ID)
  return -ENODEV;

 strlcpy(info->type, "lm73", I2C_NAME_SIZE);

 return 0;
}
