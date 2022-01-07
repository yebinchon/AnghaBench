
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {int base; } ;
struct mipi_dsi_device {int dummy; } ;


 struct sharp_nt_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int sharp_nt_panel_disable (int *) ;

__attribute__((used)) static void sharp_nt_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct sharp_nt_panel *sharp_nt = mipi_dsi_get_drvdata(dsi);

 sharp_nt_panel_disable(&sharp_nt->base);
}
