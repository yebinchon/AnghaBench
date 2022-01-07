
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; int adapter; } ;
struct i2c_board_info {int type; } ;


 int ADT7411_DEVICE_ID ;
 int ADT7411_MANUFACTURER_ID ;
 int ADT7411_REG_DEVICE_ID ;
 int ADT7411_REG_MANUFACTURER_ID ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int dev_dbg (int *,char*,int,int) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int adt7411_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 int val;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, ADT7411_REG_MANUFACTURER_ID);
 if (val < 0 || val != ADT7411_MANUFACTURER_ID) {
  dev_dbg(&client->dev,
   "Wrong manufacturer ID. Got %d, expected %d\n",
   val, ADT7411_MANUFACTURER_ID);
  return -ENODEV;
 }

 val = i2c_smbus_read_byte_data(client, ADT7411_REG_DEVICE_ID);
 if (val < 0 || val != ADT7411_DEVICE_ID) {
  dev_dbg(&client->dev,
   "Wrong device ID. Got %d, expected %d\n",
   val, ADT7411_DEVICE_ID);
  return -ENODEV;
 }

 strlcpy(info->type, "adt7411", I2C_NAME_SIZE);

 return 0;
}
