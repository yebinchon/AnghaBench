
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct i2c_driver {int (* detect ) (struct i2c_client*,struct i2c_board_info*) ;int clients; TYPE_1__ driver; } ;
struct i2c_client {int addr; int detected; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int addr; char* type; } ;
struct i2c_adapter {int class; int dev; } ;


 int ENODEV ;
 int I2C_CLASS_DEPRECATED ;
 int dev_dbg (int *,char*,char*,int) ;
 int dev_err (int *,char*,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int i2c_check_7bit_addr_validity_strict (int) ;
 scalar_t__ i2c_check_addr_busy (struct i2c_adapter*,int) ;
 int i2c_default_probe (struct i2c_adapter*,int) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int stub1 (struct i2c_client*,struct i2c_board_info*) ;

__attribute__((used)) static int i2c_detect_address(struct i2c_client *temp_client,
         struct i2c_driver *driver)
{
 struct i2c_board_info info;
 struct i2c_adapter *adapter = temp_client->adapter;
 int addr = temp_client->addr;
 int err;


 err = i2c_check_7bit_addr_validity_strict(addr);
 if (err) {
  dev_warn(&adapter->dev, "Invalid probe address 0x%02x\n",
    addr);
  return err;
 }


 if (i2c_check_addr_busy(adapter, addr))
  return 0;


 if (!i2c_default_probe(adapter, addr))
  return 0;


 memset(&info, 0, sizeof(struct i2c_board_info));
 info.addr = addr;
 err = driver->detect(temp_client, &info);
 if (err) {


  return err == -ENODEV ? 0 : err;
 }


 if (info.type[0] == '\0') {
  dev_err(&adapter->dev,
   "%s detection function provided no name for 0x%x\n",
   driver->driver.name, addr);
 } else {
  struct i2c_client *client;


  if (adapter->class & I2C_CLASS_DEPRECATED)
   dev_warn(&adapter->dev,
    "This adapter will soon drop class based instantiation of devices. "
    "Please make sure client 0x%02x gets instantiated by other means. "
    "Check 'Documentation/i2c/instantiating-devices.rst' for details.\n",
    info.addr);

  dev_dbg(&adapter->dev, "Creating %s at 0x%02x\n",
   info.type, info.addr);
  client = i2c_new_device(adapter, &info);
  if (client)
   list_add_tail(&client->detected, &driver->clients);
  else
   dev_err(&adapter->dev, "Failed creating %s at 0x%02x\n",
    info.type, info.addr);
 }
 return 0;
}
