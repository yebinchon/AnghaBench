
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; struct module* owner; int remove; int probe; int name; int * bus; } ;
struct greybus_driver {int name; TYPE_1__ driver; } ;


 int ENODEV ;
 int driver_register (TYPE_1__*) ;
 int greybus_bus_type ;
 scalar_t__ greybus_disabled () ;
 int greybus_probe ;
 int greybus_remove ;
 int pr_info (char*,int ) ;

int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
       const char *mod_name)
{
 int retval;

 if (greybus_disabled())
  return -ENODEV;

 driver->driver.bus = &greybus_bus_type;
 driver->driver.name = driver->name;
 driver->driver.probe = greybus_probe;
 driver->driver.remove = greybus_remove;
 driver->driver.owner = owner;
 driver->driver.mod_name = mod_name;

 retval = driver_register(&driver->driver);
 if (retval)
  return retval;

 pr_info("registered new driver %s\n", driver->name);
 return 0;
}
