
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct kingdisplay_panel {int base; } ;


 int kingdisplay_panel_disable (int *) ;
 int kingdisplay_panel_unprepare (int *) ;
 struct kingdisplay_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static void kingdisplay_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct kingdisplay_panel *kingdisplay = mipi_dsi_get_drvdata(dsi);

 kingdisplay_panel_unprepare(&kingdisplay->base);
 kingdisplay_panel_disable(&kingdisplay->base);
}
