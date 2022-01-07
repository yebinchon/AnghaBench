
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;
struct at91_twi_dev {int dev; scalar_t__ smr; int * slave; } ;


 int WARN_ON (int) ;
 int at91_init_twi_bus (struct at91_twi_dev*) ;
 int dev_info (int ,char*) ;
 struct at91_twi_dev* i2c_get_adapdata (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static int at91_unreg_slave(struct i2c_client *slave)
{
 struct at91_twi_dev *dev = i2c_get_adapdata(slave->adapter);

 WARN_ON(!dev->slave);

 dev_info(dev->dev, "leaving slave mode\n");

 dev->slave = ((void*)0);
 dev->smr = 0;

 at91_init_twi_bus(dev);

 pm_runtime_put(dev->dev);

 return 0;
}
