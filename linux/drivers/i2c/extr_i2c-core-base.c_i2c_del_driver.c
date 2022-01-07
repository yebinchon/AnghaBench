
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct i2c_driver {TYPE_1__ driver; } ;


 int __process_removed_driver ;
 int driver_unregister (TYPE_1__*) ;
 int i2c_for_each_dev (struct i2c_driver*,int ) ;
 int pr_debug (char*,int ) ;

void i2c_del_driver(struct i2c_driver *driver)
{
 i2c_for_each_dev(driver, __process_removed_driver);

 driver_unregister(&driver->driver);
 pr_debug("driver [%s] unregistered\n", driver->driver.name);
}
