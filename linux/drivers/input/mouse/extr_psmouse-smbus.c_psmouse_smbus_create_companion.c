
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short addr; } ;
struct psmouse_smbus_dev {int client; TYPE_1__ board; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 unsigned short I2C_CLIENT_END ;
 int I2C_FUNC_SMBUS_HOST_NOTIFY ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_new_probed_device (struct i2c_adapter*,TYPE_1__*,unsigned short*,int *) ;
 struct i2c_adapter* i2c_verify_adapter (struct device*) ;

__attribute__((used)) static int psmouse_smbus_create_companion(struct device *dev, void *data)
{
 struct psmouse_smbus_dev *smbdev = data;
 unsigned short addr_list[] = { smbdev->board.addr, I2C_CLIENT_END };
 struct i2c_adapter *adapter;

 adapter = i2c_verify_adapter(dev);
 if (!adapter)
  return 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_HOST_NOTIFY))
  return 0;

 smbdev->client = i2c_new_probed_device(adapter, &smbdev->board,
            addr_list, ((void*)0));
 if (!smbdev->client)
  return 0;


 return 1;
}
