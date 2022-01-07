
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {char const* name; int * bus; struct module* owner; } ;
struct ipack_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int ipack_bus_type ;

int ipack_driver_register(struct ipack_driver *edrv, struct module *owner,
     const char *name)
{
 edrv->driver.owner = owner;
 edrv->driver.name = name;
 edrv->driver.bus = &ipack_bus_type;
 return driver_register(&edrv->driver);
}
