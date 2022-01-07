
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;


 int panel_simple_shutdown (int *) ;

__attribute__((used)) static void panel_simple_dsi_shutdown(struct mipi_dsi_device *dsi)
{
 panel_simple_shutdown(&dsi->dev);
}
