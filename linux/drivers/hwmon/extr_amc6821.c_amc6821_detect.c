
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int AMC6821_REG_COMP_ID ;
 int AMC6821_REG_DEV_ID ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int amc6821_detect(
  struct i2c_client *client,
  struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 int dev_id, comp_id;

 dev_dbg(&adapter->dev, "amc6821_detect called.\n");

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_dbg(&adapter->dev,
   "amc6821: I2C bus doesn't support byte mode, "
   "skipping.\n");
  return -ENODEV;
 }

 dev_id = i2c_smbus_read_byte_data(client, AMC6821_REG_DEV_ID);
 comp_id = i2c_smbus_read_byte_data(client, AMC6821_REG_COMP_ID);
 if (dev_id != 0x21 || comp_id != 0x49) {
  dev_dbg(&adapter->dev,
   "amc6821: detection failed at 0x%02x.\n",
   address);
  return -ENODEV;
 }





 dev_id = i2c_smbus_read_byte_data(client, 0x80 | AMC6821_REG_DEV_ID);
 comp_id = i2c_smbus_read_byte_data(client, 0x80 | AMC6821_REG_COMP_ID);
 if (dev_id != 0x21 || comp_id != 0x49) {
  dev_dbg(&adapter->dev,
   "amc6821: detection failed at 0x%02x.\n",
   address);
  return -ENODEV;
 }

 dev_info(&adapter->dev, "amc6821: chip found at 0x%02x.\n", address);
 strlcpy(info->type, "amc6821", I2C_NAME_SIZE);

 return 0;
}
