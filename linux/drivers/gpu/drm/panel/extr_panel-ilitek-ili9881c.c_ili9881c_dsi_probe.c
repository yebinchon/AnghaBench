
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int of_node; } ;
struct mipi_dsi_device {int lanes; int format; int mode_flags; TYPE_3__ dev; } ;
struct TYPE_7__ {int * funcs; TYPE_3__* dev; } ;
struct ili9881c {TYPE_1__ panel; int backlight; int reset; int power; struct mipi_dsi_device* dsi; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_gpiod_get (TYPE_3__*,char*,int ) ;
 struct ili9881c* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int ili9881c_funcs ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct ili9881c*) ;
 int of_find_backlight_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
{
 struct device_node *np;
 struct ili9881c *ctx;
 int ret;

 ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 mipi_dsi_set_drvdata(dsi, ctx);
 ctx->dsi = dsi;

 drm_panel_init(&ctx->panel);
 ctx->panel.dev = &dsi->dev;
 ctx->panel.funcs = &ili9881c_funcs;

 ctx->power = devm_regulator_get(&dsi->dev, "power");
 if (IS_ERR(ctx->power)) {
  dev_err(&dsi->dev, "Couldn't get our power regulator\n");
  return PTR_ERR(ctx->power);
 }

 ctx->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->reset)) {
  dev_err(&dsi->dev, "Couldn't get our reset GPIO\n");
  return PTR_ERR(ctx->reset);
 }

 np = of_parse_phandle(dsi->dev.of_node, "backlight", 0);
 if (np) {
  ctx->backlight = of_find_backlight_by_node(np);
  of_node_put(np);

  if (!ctx->backlight)
   return -EPROBE_DEFER;
 }

 ret = drm_panel_add(&ctx->panel);
 if (ret < 0)
  return ret;

 dsi->mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->lanes = 4;

 return mipi_dsi_attach(dsi);
}
