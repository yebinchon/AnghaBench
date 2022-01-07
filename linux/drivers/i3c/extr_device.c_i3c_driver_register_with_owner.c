
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int * bus; struct module* owner; } ;
struct i3c_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int i3c_bus_type ;

int i3c_driver_register_with_owner(struct i3c_driver *drv, struct module *owner)
{
 drv->driver.owner = owner;
 drv->driver.bus = &i3c_bus_type;

 return driver_register(&drv->driver);
}
