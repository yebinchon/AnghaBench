
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_driver {int (* remove ) (struct mipi_dsi_device*) ;} ;
struct mipi_dsi_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct mipi_dsi_device*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;
 struct mipi_dsi_driver* to_mipi_dsi_driver (int ) ;

__attribute__((used)) static int mipi_dsi_drv_remove(struct device *dev)
{
 struct mipi_dsi_driver *drv = to_mipi_dsi_driver(dev->driver);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);

 return drv->remove(dsi);
}
