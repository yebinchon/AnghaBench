
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct innolux_panel {int base; } ;


 int innolux_panel_disable (int *) ;
 int innolux_panel_unprepare (int *) ;
 struct innolux_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static void innolux_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct innolux_panel *innolux = mipi_dsi_get_drvdata(dsi);

 innolux_panel_unprepare(&innolux->base);
 innolux_panel_disable(&innolux->base);
}
