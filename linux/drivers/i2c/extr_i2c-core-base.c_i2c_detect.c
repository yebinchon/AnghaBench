
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct i2c_driver {unsigned short* address_list; int class; TYPE_1__ driver; int detect; } ;
struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int class; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_DEPRECATED ;
 unsigned short const I2C_CLIENT_END ;
 int dev_dbg (int *,char*,int,...) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_detect_address (struct i2c_client*,struct i2c_driver*) ;
 int kfree (struct i2c_client*) ;
 struct i2c_client* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2c_detect(struct i2c_adapter *adapter, struct i2c_driver *driver)
{
 const unsigned short *address_list;
 struct i2c_client *temp_client;
 int i, err = 0;
 int adap_id = i2c_adapter_id(adapter);

 address_list = driver->address_list;
 if (!driver->detect || !address_list)
  return 0;


 if (adapter->class == I2C_CLASS_DEPRECATED) {
  dev_dbg(&adapter->dev,
   "This adapter dropped support for I2C classes and won't auto-detect %s devices anymore. "
   "If you need it, check 'Documentation/i2c/instantiating-devices.rst' for alternatives.\n",
   driver->driver.name);
  return 0;
 }


 if (!(adapter->class & driver->class))
  return 0;


 temp_client = kzalloc(sizeof(struct i2c_client), GFP_KERNEL);
 if (!temp_client)
  return -ENOMEM;
 temp_client->adapter = adapter;

 for (i = 0; address_list[i] != I2C_CLIENT_END; i += 1) {
  dev_dbg(&adapter->dev,
   "found normal entry for adapter %d, addr 0x%02x\n",
   adap_id, address_list[i]);
  temp_client->addr = address_list[i];
  err = i2c_detect_address(temp_client, driver);
  if (unlikely(err))
   break;
 }

 kfree(temp_client);
 return err;
}
