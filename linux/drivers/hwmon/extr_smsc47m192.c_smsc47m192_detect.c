
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int SMSC47M192_REG_COMPANY_ID ;
 int SMSC47M192_REG_VERSION ;
 int SMSC47M192_REG_VID ;
 int SMSC47M192_REG_VID4 ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int smsc47m192_detect(struct i2c_client *client,
        struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int version;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 version = i2c_smbus_read_byte_data(client, SMSC47M192_REG_VERSION);
 if (i2c_smbus_read_byte_data(client,
    SMSC47M192_REG_COMPANY_ID) == 0x55
  && (version & 0xf0) == 0x20
  && (i2c_smbus_read_byte_data(client,
    SMSC47M192_REG_VID) & 0x70) == 0x00
  && (i2c_smbus_read_byte_data(client,
    SMSC47M192_REG_VID4) & 0xfe) == 0x80) {
  dev_info(&adapter->dev,
    "found SMSC47M192 or compatible, "
    "version 2, stepping A%d\n", version & 0x0f);
 } else {
  dev_dbg(&adapter->dev,
   "SMSC47M192 detection failed at 0x%02x\n",
   client->addr);
  return -ENODEV;
 }

 strlcpy(info->type, "smsc47m192", I2C_NAME_SIZE);

 return 0;
}
