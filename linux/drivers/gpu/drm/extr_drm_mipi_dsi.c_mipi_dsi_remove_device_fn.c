
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct device {int dummy; } ;


 int mipi_dsi_device_unregister (struct mipi_dsi_device*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;

__attribute__((used)) static int mipi_dsi_remove_device_fn(struct device *dev, void *priv)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);

 mipi_dsi_device_unregister(dsi);

 return 0;
}
