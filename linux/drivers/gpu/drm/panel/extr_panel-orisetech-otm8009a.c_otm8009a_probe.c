
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * funcs; struct device* dev; } ;
struct otm8009a {TYPE_6__* bl_dev; TYPE_3__ panel; struct device* dev; TYPE_6__* supply; TYPE_6__* reset_gpio; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; TYPE_1__* host; int format; struct device dev; } ;
struct TYPE_13__ {int type; int power; int brightness; int max_brightness; } ;
struct TYPE_15__ {TYPE_2__ props; } ;
struct TYPE_12__ {int dev; } ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FB_BLANK_POWERDOWN ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (TYPE_6__*) ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int OTM8009A_BACKLIGHT_DEFAULT ;
 int OTM8009A_BACKLIGHT_MAX ;
 int PTR_ERR (TYPE_6__*) ;
 int backlight_device_unregister (TYPE_6__*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 TYPE_6__* devm_backlight_device_register (struct device*,int ,int ,struct otm8009a*,int *,int *) ;
 TYPE_6__* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct otm8009a* devm_kzalloc (struct device*,int,int ) ;
 TYPE_6__* devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_3__*) ;
 int drm_panel_init (TYPE_3__*) ;
 int drm_panel_remove (TYPE_3__*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct otm8009a*) ;
 int otm8009a_backlight_ops ;
 int otm8009a_drm_funcs ;

__attribute__((used)) static int otm8009a_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct otm8009a *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->reset_gpio)) {
  dev_err(dev, "cannot get reset-gpio\n");
  return PTR_ERR(ctx->reset_gpio);
 }

 ctx->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(ctx->supply)) {
  ret = PTR_ERR(ctx->supply);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to request regulator: %d\n", ret);
  return ret;
 }

 mipi_dsi_set_drvdata(dsi, ctx);

 ctx->dev = dev;

 dsi->lanes = 2;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
     MIPI_DSI_MODE_LPM;

 drm_panel_init(&ctx->panel);
 ctx->panel.dev = dev;
 ctx->panel.funcs = &otm8009a_drm_funcs;

 ctx->bl_dev = devm_backlight_device_register(dev, dev_name(dev),
           dsi->host->dev, ctx,
           &otm8009a_backlight_ops,
           ((void*)0));
 if (IS_ERR(ctx->bl_dev)) {
  ret = PTR_ERR(ctx->bl_dev);
  dev_err(dev, "failed to register backlight: %d\n", ret);
  return ret;
 }

 ctx->bl_dev->props.max_brightness = OTM8009A_BACKLIGHT_MAX;
 ctx->bl_dev->props.brightness = OTM8009A_BACKLIGHT_DEFAULT;
 ctx->bl_dev->props.power = FB_BLANK_POWERDOWN;
 ctx->bl_dev->props.type = BACKLIGHT_RAW;

 drm_panel_add(&ctx->panel);

 ret = mipi_dsi_attach(dsi);
 if (ret < 0) {
  dev_err(dev, "mipi_dsi_attach failed. Is host ready?\n");
  drm_panel_remove(&ctx->panel);
  backlight_device_unregister(ctx->bl_dev);
  return ret;
 }

 return 0;
}
