
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; int type; } ;
struct i2c_adapter {int dev; } ;


 int dev_err (int *,char*,char const*) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void i2c_powermac_create_one(struct i2c_adapter *adap,
           const char *type,
           u32 addr)
{
 struct i2c_board_info info = {};
 struct i2c_client *newdev;

 strncpy(info.type, type, sizeof(info.type));
 info.addr = addr;
 newdev = i2c_new_device(adap, &info);
 if (!newdev)
  dev_err(&adap->dev,
   "i2c-powermac: Failure to register missing %s\n",
   type);
}
