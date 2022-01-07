
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int F75375_CHIP_ID ;
 int F75375_REG_VENDOR ;
 int F75375_REG_VERSION ;
 int I2C_NAME_SIZE ;
 int dev_info (int *,char*,char const*,int ) ;
 int f75375_read16 (struct i2c_client*,int ) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int f75375_detect(struct i2c_client *client,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 u16 vendid, chipid;
 u8 version;
 const char *name;

 vendid = f75375_read16(client, F75375_REG_VENDOR);
 chipid = f75375_read16(client, F75375_CHIP_ID);
 if (vendid != 0x1934)
  return -ENODEV;

 if (chipid == 0x0306)
  name = "f75375";
 else if (chipid == 0x0204)
  name = "f75373";
 else if (chipid == 0x0410)
  name = "f75387";
 else
  return -ENODEV;

 version = f75375_read8(client, F75375_REG_VERSION);
 dev_info(&adapter->dev, "found %s version: %02X\n", name, version);
 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
