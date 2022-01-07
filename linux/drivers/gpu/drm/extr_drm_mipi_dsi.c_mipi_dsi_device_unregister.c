
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;


 int device_unregister (int *) ;

void mipi_dsi_device_unregister(struct mipi_dsi_device *dsi)
{
 device_unregister(&dsi->dev);
}
