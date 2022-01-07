
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd101t2587_panel {int base; } ;
struct mipi_dsi_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct osd101t2587_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int osd101t2587_panel_disable (int *) ;
 int osd101t2587_panel_unprepare (int *) ;

__attribute__((used)) static int osd101t2587_panel_remove(struct mipi_dsi_device *dsi)
{
 struct osd101t2587_panel *osd101t2587 = mipi_dsi_get_drvdata(dsi);
 int ret;

 ret = osd101t2587_panel_disable(&osd101t2587->base);
 if (ret < 0)
  dev_warn(&dsi->dev, "failed to disable panel: %d\n", ret);

 osd101t2587_panel_unprepare(&osd101t2587->base);

 drm_panel_remove(&osd101t2587->base);

 ret = mipi_dsi_detach(dsi);
 if (ret < 0)
  dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);

 return ret;
}
