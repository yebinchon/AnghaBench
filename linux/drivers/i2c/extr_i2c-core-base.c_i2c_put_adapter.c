
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int owner; int dev; } ;


 int module_put (int ) ;
 int put_device (int *) ;

void i2c_put_adapter(struct i2c_adapter *adap)
{
 if (!adap)
  return;

 put_device(&adap->dev);
 module_put(adap->owner);
}
