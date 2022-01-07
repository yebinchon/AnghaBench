
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mipi_dsi_device {int dummy; } ;
struct jh057n {int panel; int dev; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*) ;
 int ST7703_CMD_ALL_PIXEL_ON ;
 int drm_panel_disable (int *) ;
 int drm_panel_enable (int *) ;
 int drm_panel_prepare (int *) ;
 int drm_panel_unprepare (int *) ;
 int dsi_generic_write_seq (struct mipi_dsi_device*,int ) ;
 int msleep (int) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int allpixelson_set(void *data, u64 val)
{
 struct jh057n *ctx = data;
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);

 DRM_DEV_DEBUG_DRIVER(ctx->dev, "Setting all pixels on\n");
 dsi_generic_write_seq(dsi, ST7703_CMD_ALL_PIXEL_ON);
 msleep(val * 1000);

 drm_panel_disable(&ctx->panel);
 drm_panel_unprepare(&ctx->panel);
 drm_panel_prepare(&ctx->panel);
 drm_panel_enable(&ctx->panel);

 return 0;
}
