
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct macio_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int macio_bus_type ;

int macio_register_driver(struct macio_driver *drv)
{

 drv->driver.bus = &macio_bus_type;


 return driver_register(&drv->driver);
}
