
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct innolux_panel {int base; } ;


 int DRM_DEV_ERROR (int *,char*,int) ;
 int innolux_panel_del (struct innolux_panel*) ;
 int innolux_panel_disable (int *) ;
 int innolux_panel_unprepare (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct innolux_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int innolux_panel_remove(struct mipi_dsi_device *dsi)
{
 struct innolux_panel *innolux = mipi_dsi_get_drvdata(dsi);
 int err;

 err = innolux_panel_unprepare(&innolux->base);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to unprepare panel: %d\n",
         err);

 err = innolux_panel_disable(&innolux->base);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", err);

 err = mipi_dsi_detach(dsi);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to detach from DSI host: %d\n",
         err);

 innolux_panel_del(innolux);

 return 0;
}
