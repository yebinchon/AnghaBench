
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct i2c_par {TYPE_1__ adapter; struct i2c_client* ara; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 int i2c_handle_smbus_alert (struct i2c_client*) ;

__attribute__((used)) static void i2c_parport_irq(void *data)
{
 struct i2c_par *adapter = data;
 struct i2c_client *ara = adapter->ara;

 if (ara) {
  dev_dbg(&ara->dev, "SMBus alert received\n");
  i2c_handle_smbus_alert(ara);
 } else
  dev_dbg(&adapter->adapter.dev,
   "SMBus alert received but no ARA client!\n");
}
