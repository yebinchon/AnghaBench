
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* mod_name; struct module* owner; int name; int * bus; } ;
struct scmi_driver {int name; TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int pr_debug (char*,int ) ;
 int scmi_bus_type ;

int scmi_driver_register(struct scmi_driver *driver, struct module *owner,
    const char *mod_name)
{
 int retval;

 driver->driver.bus = &scmi_bus_type;
 driver->driver.name = driver->name;
 driver->driver.owner = owner;
 driver->driver.mod_name = mod_name;

 retval = driver_register(&driver->driver);
 if (!retval)
  pr_debug("registered new scmi driver %s\n", driver->name);

 return retval;
}
