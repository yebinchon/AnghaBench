
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
 int MAX6639_REG_DEVID ;
 int MAX6639_REG_MANUID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int max6639_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int dev_id, manu_id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 dev_id = i2c_smbus_read_byte_data(client, MAX6639_REG_DEVID);
 manu_id = i2c_smbus_read_byte_data(client, MAX6639_REG_MANUID);
 if (dev_id != 0x58 || manu_id != 0x4D)
  return -ENODEV;

 strlcpy(info->type, "max6639", I2C_NAME_SIZE);

 return 0;
}
