
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
 int REG_MFG_ID ;
 int REG_PRODUCT_ID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int
emc2103_detect(struct i2c_client *new_client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int manufacturer, product;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 manufacturer = i2c_smbus_read_byte_data(new_client, REG_MFG_ID);
 if (manufacturer != 0x5D)
  return -ENODEV;

 product = i2c_smbus_read_byte_data(new_client, REG_PRODUCT_ID);
 if ((product != 0x24) && (product != 0x26))
  return -ENODEV;

 strlcpy(info->type, "emc2103", I2C_NAME_SIZE);

 return 0;
}
