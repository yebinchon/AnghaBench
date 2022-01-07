
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_panel {int panel; } ;
struct mipi_dsi_device {int dummy; } ;


 struct rad_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int rad_panel_disable (int *) ;
 int rad_panel_unprepare (int *) ;

__attribute__((used)) static void rad_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct rad_panel *rad = mipi_dsi_get_drvdata(dsi);

 rad_panel_disable(&rad->panel);
 rad_panel_unprepare(&rad->panel);
}
