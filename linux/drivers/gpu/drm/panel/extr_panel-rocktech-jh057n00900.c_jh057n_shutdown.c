
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct jh057n {int panel; } ;


 int DRM_DEV_ERROR (int *,char*,int) ;
 int drm_panel_disable (int *) ;
 int drm_panel_unprepare (int *) ;
 struct jh057n* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static void jh057n_shutdown(struct mipi_dsi_device *dsi)
{
 struct jh057n *ctx = mipi_dsi_get_drvdata(dsi);
 int ret;

 ret = drm_panel_unprepare(&ctx->panel);
 if (ret < 0)
  DRM_DEV_ERROR(&dsi->dev, "Failed to unprepare panel: %d\n",
         ret);

 ret = drm_panel_disable(&ctx->panel);
 if (ret < 0)
  DRM_DEV_ERROR(&dsi->dev, "Failed to disable panel: %d\n",
         ret);
}
