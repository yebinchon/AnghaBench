
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int shutdown; int remove; int probe; struct module* owner; int * bus; } ;
struct mipi_dsi_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; } ;


 int driver_register (TYPE_1__*) ;
 int mipi_dsi_bus_type ;
 int mipi_dsi_drv_probe ;
 int mipi_dsi_drv_remove ;
 int mipi_dsi_drv_shutdown ;

int mipi_dsi_driver_register_full(struct mipi_dsi_driver *drv,
      struct module *owner)
{
 drv->driver.bus = &mipi_dsi_bus_type;
 drv->driver.owner = owner;

 if (drv->probe)
  drv->driver.probe = mipi_dsi_drv_probe;
 if (drv->remove)
  drv->driver.remove = mipi_dsi_drv_remove;
 if (drv->shutdown)
  drv->driver.shutdown = mipi_dsi_drv_shutdown;

 return driver_register(&drv->driver);
}
