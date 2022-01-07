
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int BLM_GET_ADDR ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int I2C_NAME_SIZE ;
 int blinkm_read (struct i2c_client*,int ,int*) ;
 int blinkm_write (struct i2c_client*,int ,int *) ;
 int dev_err (int *,char*,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int strlcpy (int ,char*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int blinkm_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int ret;
 int count = 99;
 u8 tmpargs[7];

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA
         | I2C_FUNC_SMBUS_WORD_DATA
         | I2C_FUNC_SMBUS_WRITE_BYTE))
  return -ENODEV;





 while (count > 0) {
  ret = blinkm_write(client, BLM_GET_ADDR, ((void*)0));
  if (ret)
   return ret;
  usleep_range(5000, 10000);
  ret = blinkm_read(client, BLM_GET_ADDR, tmpargs);
  if (ret)
   return ret;
  usleep_range(5000, 10000);
  if (tmpargs[0] == 0x09)
   count = 0;
  count--;
 }


 ret = blinkm_write(client, BLM_GET_ADDR, ((void*)0));
 if (ret < 0)
  return ret;
 usleep_range(20000, 30000);
 ret = blinkm_read(client, BLM_GET_ADDR, tmpargs);
 if (ret < 0)
  return ret;

 if (tmpargs[0] != 0x09) {
  dev_err(&client->dev, "enodev DEV ADDR = 0x%02X\n", tmpargs[0]);
  return -ENODEV;
 }

 strlcpy(info->type, "blinkm", I2C_NAME_SIZE);
 return 0;
}
