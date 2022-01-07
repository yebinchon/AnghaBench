
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mipi_dsi_device {int lanes; int format; int mode_flags; int dev; } ;
struct TYPE_3__ {int * funcs; int * dev; } ;
struct feiyang {TYPE_1__ panel; void* backlight; void* reset; void* avdd; void* dvdd; struct mipi_dsi_device* dsi; } ;


 int DRM_DEV_ERROR (int *,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int PTR_ERR (void*) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct feiyang* devm_kzalloc (int *,int,int ) ;
 void* devm_of_find_backlight (int *) ;
 void* devm_regulator_get (int *,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int feiyang_funcs ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct feiyang*) ;

__attribute__((used)) static int feiyang_dsi_probe(struct mipi_dsi_device *dsi)
{
 struct feiyang *ctx;
 int ret;

 ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, ctx);
 ctx->dsi = dsi;

 drm_panel_init(&ctx->panel);
 ctx->panel.dev = &dsi->dev;
 ctx->panel.funcs = &feiyang_funcs;

 ctx->dvdd = devm_regulator_get(&dsi->dev, "dvdd");
 if (IS_ERR(ctx->dvdd)) {
  DRM_DEV_ERROR(&dsi->dev, "Couldn't get dvdd regulator\n");
  return PTR_ERR(ctx->dvdd);
 }

 ctx->avdd = devm_regulator_get(&dsi->dev, "avdd");
 if (IS_ERR(ctx->avdd)) {
  DRM_DEV_ERROR(&dsi->dev, "Couldn't get avdd regulator\n");
  return PTR_ERR(ctx->avdd);
 }

 ctx->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->reset)) {
  DRM_DEV_ERROR(&dsi->dev, "Couldn't get our reset GPIO\n");
  return PTR_ERR(ctx->reset);
 }

 ctx->backlight = devm_of_find_backlight(&dsi->dev);
 if (IS_ERR(ctx->backlight))
  return PTR_ERR(ctx->backlight);

 ret = drm_panel_add(&ctx->panel);
 if (ret < 0)
  return ret;

 dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->lanes = 4;

 return mipi_dsi_attach(dsi);
}
