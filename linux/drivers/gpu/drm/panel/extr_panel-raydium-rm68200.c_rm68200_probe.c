
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * funcs; struct device* dev; } ;
struct rm68200 {TYPE_1__ panel; struct device* dev; int backlight; int supply; int reset_gpio; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int format; struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct rm68200* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_find_backlight (struct device*) ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int drm_panel_remove (TYPE_1__*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct rm68200*) ;
 int rm68200_drm_funcs ;

__attribute__((used)) static int rm68200_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct rm68200 *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->reset_gpio)) {
  ret = PTR_ERR(ctx->reset_gpio);
  dev_err(dev, "cannot get reset GPIO: %d\n", ret);
  return ret;
 }

 ctx->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(ctx->supply)) {
  ret = PTR_ERR(ctx->supply);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "cannot get regulator: %d\n", ret);
  return ret;
 }

 ctx->backlight = devm_of_find_backlight(dev);
 if (IS_ERR(ctx->backlight))
  return PTR_ERR(ctx->backlight);

 mipi_dsi_set_drvdata(dsi, ctx);

 ctx->dev = dev;

 dsi->lanes = 2;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
     MIPI_DSI_MODE_LPM;

 drm_panel_init(&ctx->panel);
 ctx->panel.dev = dev;
 ctx->panel.funcs = &rm68200_drm_funcs;

 drm_panel_add(&ctx->panel);

 ret = mipi_dsi_attach(dsi);
 if (ret < 0) {
  dev_err(dev, "mipi_dsi_attach() failed: %d\n", ret);
  drm_panel_remove(&ctx->panel);
  return ret;
 }

 return 0;
}
