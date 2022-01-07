
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_driver {int (* alert ) (struct i2c_client*,int ,int ) ;} ;
struct TYPE_3__ {scalar_t__ driver; } ;
struct i2c_client {scalar_t__ addr; int flags; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct alert_data {scalar_t__ addr; int data; int type; } ;


 int EBUSY ;
 int I2C_CLIENT_TEN ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 struct i2c_client* i2c_verify_client (struct device*) ;
 int stub1 (struct i2c_client*,int ,int ) ;
 struct i2c_driver* to_i2c_driver (scalar_t__) ;

__attribute__((used)) static int smbus_do_alert(struct device *dev, void *addrp)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct alert_data *data = addrp;
 struct i2c_driver *driver;

 if (!client || client->addr != data->addr)
  return 0;
 if (client->flags & I2C_CLIENT_TEN)
  return 0;





 device_lock(dev);
 if (client->dev.driver) {
  driver = to_i2c_driver(client->dev.driver);
  if (driver->alert)
   driver->alert(client, data->type, data->data);
  else
   dev_warn(&client->dev, "no driver alert()!\n");
 } else
  dev_dbg(&client->dev, "alert with no driver\n");
 device_unlock(dev);


 return -EBUSY;
}
