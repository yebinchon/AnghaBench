
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; int * funcs; } ;
struct tc358764 {TYPE_1__ bridge; struct device* dev; } ;
struct device {int of_node; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int format; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_AUTO_VERT ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int dev_err (struct device*,char*) ;
 struct tc358764* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_add (TYPE_1__*) ;
 int drm_bridge_remove (TYPE_1__*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct tc358764*) ;
 int tc358764_bridge_funcs ;
 int tc358764_configure_regulators (struct tc358764*) ;
 int tc358764_parse_dt (struct tc358764*) ;

__attribute__((used)) static int tc358764_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct tc358764 *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(struct tc358764), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, ctx);

 ctx->dev = dev;

 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST
  | MIPI_DSI_MODE_VIDEO_AUTO_VERT | MIPI_DSI_MODE_LPM;

 ret = tc358764_parse_dt(ctx);
 if (ret < 0)
  return ret;

 ret = tc358764_configure_regulators(ctx);
 if (ret < 0)
  return ret;

 ctx->bridge.funcs = &tc358764_bridge_funcs;
 ctx->bridge.of_node = dev->of_node;

 drm_bridge_add(&ctx->bridge);

 ret = mipi_dsi_attach(dsi);
 if (ret < 0) {
  drm_bridge_remove(&ctx->bridge);
  dev_err(dev, "failed to attach dsi\n");
 }

 return ret;
}
