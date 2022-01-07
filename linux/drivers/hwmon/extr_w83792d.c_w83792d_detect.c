
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int W83792D_REG_BANK ;
 int W83792D_REG_CHIPMAN ;
 int W83792D_REG_CONFIG ;
 int W83792D_REG_I2C_ADDR ;
 int W83792D_REG_WCHIPID ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int strlcpy (int ,char*,int ) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static int
w83792d_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int val1, val2;
 unsigned short address = client->addr;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (w83792d_read_value(client, W83792D_REG_CONFIG) & 0x80)
  return -ENODEV;

 val1 = w83792d_read_value(client, W83792D_REG_BANK);
 val2 = w83792d_read_value(client, W83792D_REG_CHIPMAN);

 if (!(val1 & 0x07)) {
  if ((!(val1 & 0x80) && val2 != 0xa3) ||
      ((val1 & 0x80) && val2 != 0x5c))
   return -ENODEV;
 }




 if (w83792d_read_value(client, W83792D_REG_I2C_ADDR) != address)
  return -ENODEV;


 w83792d_write_value(client,
       W83792D_REG_BANK,
       (w83792d_read_value(client,
    W83792D_REG_BANK) & 0x78) | 0x80);


 val1 = w83792d_read_value(client, W83792D_REG_WCHIPID);
 val2 = w83792d_read_value(client, W83792D_REG_CHIPMAN);
 if (val1 != 0x7a || val2 != 0x5c)
  return -ENODEV;

 strlcpy(info->type, "w83792d", I2C_NAME_SIZE);

 return 0;
}
