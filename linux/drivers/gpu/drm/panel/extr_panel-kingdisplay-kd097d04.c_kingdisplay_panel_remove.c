
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct kingdisplay_panel {int base; } ;


 int DRM_DEV_ERROR (int *,char*,int) ;
 int kingdisplay_panel_del (struct kingdisplay_panel*) ;
 int kingdisplay_panel_disable (int *) ;
 int kingdisplay_panel_unprepare (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct kingdisplay_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int kingdisplay_panel_remove(struct mipi_dsi_device *dsi)
{
 struct kingdisplay_panel *kingdisplay = mipi_dsi_get_drvdata(dsi);
 int err;

 err = kingdisplay_panel_unprepare(&kingdisplay->base);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to unprepare panel: %d\n",
         err);

 err = kingdisplay_panel_disable(&kingdisplay->base);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", err);

 err = mipi_dsi_detach(dsi);
 if (err < 0)
  DRM_DEV_ERROR(&dsi->dev, "failed to detach from DSI host: %d\n",
         err);

 kingdisplay_panel_del(kingdisplay);

 return 0;
}
