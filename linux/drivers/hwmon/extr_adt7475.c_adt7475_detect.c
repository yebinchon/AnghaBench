
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
 int REG_DEVID ;
 int REG_DEVID2 ;
 int REG_VENDID ;
 int adt7475_read (int ) ;
 int dev_dbg (int *,char*,unsigned int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int adt7475_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int vendid, devid, devid2;
 const char *name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 vendid = adt7475_read(REG_VENDID);
 devid2 = adt7475_read(REG_DEVID2);
 if (vendid != 0x41 ||
     (devid2 & 0xf8) != 0x68)
  return -ENODEV;

 devid = adt7475_read(REG_DEVID);
 if (devid == 0x73)
  name = "adt7473";
 else if (devid == 0x75 && client->addr == 0x2e)
  name = "adt7475";
 else if (devid == 0x76)
  name = "adt7476";
 else if ((devid2 & 0xfc) == 0x6c)
  name = "adt7490";
 else {
  dev_dbg(&adapter->dev,
   "Couldn't detect an ADT7473/75/76/90 part at "
   "0x%02x\n", (unsigned int)client->addr);
  return -ENODEV;
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
