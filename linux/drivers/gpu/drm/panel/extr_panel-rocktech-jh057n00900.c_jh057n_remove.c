
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct jh057n {int panel; } ;


 int DRM_DEV_ERROR (int *,char*,int) ;
 int drm_panel_remove (int *) ;
 int jh057n_debugfs_remove (struct jh057n*) ;
 int jh057n_shutdown (struct mipi_dsi_device*) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct jh057n* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int jh057n_remove(struct mipi_dsi_device *dsi)
{
 struct jh057n *ctx = mipi_dsi_get_drvdata(dsi);
 int ret;

 jh057n_shutdown(dsi);

 ret = mipi_dsi_detach(dsi);
 if (ret < 0)
  DRM_DEV_ERROR(&dsi->dev, "Failed to detach from DSI host: %d\n",
         ret);

 drm_panel_remove(&ctx->panel);

 jh057n_debugfs_remove(ctx);

 return 0;
}
