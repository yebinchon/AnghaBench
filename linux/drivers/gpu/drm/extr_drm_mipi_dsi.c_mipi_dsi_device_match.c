
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int name; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 int strcmp (int ,int ) ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;

__attribute__((used)) static int mipi_dsi_device_match(struct device *dev, struct device_driver *drv)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);


 if (of_driver_match_device(dev, drv))
  return 1;


 if (!strcmp(dsi->name, drv->name))
  return 1;

 return 0;
}
