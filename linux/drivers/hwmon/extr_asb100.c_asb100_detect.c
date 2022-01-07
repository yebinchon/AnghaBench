
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ASB100_REG_BANK ;
 int ASB100_REG_CHIPMAN ;
 int ASB100_REG_WCHIPID ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int pr_debug (char*,...) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int asb100_detect(struct i2c_client *client,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int val1, val2;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  pr_debug("detect failed, smbus byte data not supported!\n");
  return -ENODEV;
 }

 val1 = i2c_smbus_read_byte_data(client, ASB100_REG_BANK);
 val2 = i2c_smbus_read_byte_data(client, ASB100_REG_CHIPMAN);


 if ((!(val1 & 0x07)) &&

   (((!(val1 & 0x80)) && (val2 != 0x94)) ||

   ((val1 & 0x80) && (val2 != 0x06)))) {
  pr_debug("detect failed, bad chip id 0x%02x!\n", val2);
  return -ENODEV;
 }


 i2c_smbus_write_byte_data(client, ASB100_REG_BANK,
  (i2c_smbus_read_byte_data(client, ASB100_REG_BANK) & 0x78)
  | 0x80);


 val1 = i2c_smbus_read_byte_data(client, ASB100_REG_WCHIPID);
 val2 = i2c_smbus_read_byte_data(client, ASB100_REG_CHIPMAN);

 if (val1 != 0x31 || val2 != 0x06)
  return -ENODEV;

 strlcpy(info->type, "asb100", I2C_NAME_SIZE);

 return 0;
}
