
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_detect (struct i2c_adapter*,struct i2c_driver*) ;

__attribute__((used)) static int i2c_do_add_adapter(struct i2c_driver *driver,
         struct i2c_adapter *adap)
{

 i2c_detect(adap, driver);

 return 0;
}
