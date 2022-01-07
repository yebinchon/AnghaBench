
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; int * bus; struct module* owner; } ;
struct mcb_driver {TYPE_1__ driver; int remove; int probe; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int mcb_bus_type ;

int __mcb_register_driver(struct mcb_driver *drv, struct module *owner,
   const char *mod_name)
{
 if (!drv->probe || !drv->remove)
  return -EINVAL;

 drv->driver.owner = owner;
 drv->driver.bus = &mcb_bus_type;
 drv->driver.mod_name = mod_name;

 return driver_register(&drv->driver);
}
