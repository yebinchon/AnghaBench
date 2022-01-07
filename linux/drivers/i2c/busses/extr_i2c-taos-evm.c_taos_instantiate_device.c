
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct i2c_adapter {int dev; int name; } ;
struct TYPE_3__ {int addr; int type; } ;


 int dev_info (int *,char*,int ,int ) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,TYPE_1__*) ;
 int strncmp (int ,char*,int) ;
 TYPE_1__ tsl2550_info ;

__attribute__((used)) static struct i2c_client *taos_instantiate_device(struct i2c_adapter *adapter)
{
 if (!strncmp(adapter->name, "TAOS TSL2550 EVM", 16)) {
  dev_info(&adapter->dev, "Instantiating device %s at 0x%02x\n",
   tsl2550_info.type, tsl2550_info.addr);
  return i2c_new_device(adapter, &tsl2550_info);
 }

 return ((void*)0);
}
