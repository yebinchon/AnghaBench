
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_panel {int base; } ;
struct mipi_dsi_device {int dummy; } ;


 struct sharp_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int sharp_panel_disable (int *) ;

__attribute__((used)) static void sharp_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct sharp_panel *sharp = mipi_dsi_get_drvdata(dsi);


 if (!sharp)
  return;

 sharp_panel_disable(&sharp->base);
}
