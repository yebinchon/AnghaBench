
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_driver {int driver; } ;


 int driver_unregister (int *) ;

void mipi_dsi_driver_unregister(struct mipi_dsi_driver *drv)
{
 driver_unregister(&drv->driver);
}
