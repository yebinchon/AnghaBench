
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct hsi_client_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int hsi_bus_type ;

int hsi_register_client_driver(struct hsi_client_driver *drv)
{
 drv->driver.bus = &hsi_bus_type;

 return driver_register(&drv->driver);
}
