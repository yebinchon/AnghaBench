
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd101t2587_panel {int base; } ;
struct mipi_dsi_device {int dummy; } ;


 struct osd101t2587_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int osd101t2587_panel_disable (int *) ;
 int osd101t2587_panel_unprepare (int *) ;

__attribute__((used)) static void osd101t2587_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct osd101t2587_panel *osd101t2587 = mipi_dsi_get_drvdata(dsi);

 osd101t2587_panel_disable(&osd101t2587->base);
 osd101t2587_panel_unprepare(&osd101t2587->base);
}
