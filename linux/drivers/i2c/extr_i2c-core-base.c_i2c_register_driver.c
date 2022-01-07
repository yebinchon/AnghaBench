
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int name; int * bus; struct module* owner; } ;
struct i2c_driver {TYPE_1__ driver; int clients; } ;


 int EAGAIN ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int __process_new_driver ;
 int driver_register (TYPE_1__*) ;
 int i2c_bus_type ;
 int i2c_for_each_dev (struct i2c_driver*,int ) ;
 int is_registered ;
 int pr_debug (char*,int ) ;

int i2c_register_driver(struct module *owner, struct i2c_driver *driver)
{
 int res;


 if (WARN_ON(!is_registered))
  return -EAGAIN;


 driver->driver.owner = owner;
 driver->driver.bus = &i2c_bus_type;
 INIT_LIST_HEAD(&driver->clients);




 res = driver_register(&driver->driver);
 if (res)
  return res;

 pr_debug("driver [%s] registered\n", driver->driver.name);


 i2c_for_each_dev(driver, __process_new_driver);

 return 0;
}
