
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * funcs; TYPE_3__* dev; } ;
struct st7789v {TYPE_1__* backlight; TYPE_2__ panel; int reset; int power; struct spi_device* spi; } ;
struct TYPE_9__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_gpiod_get (TYPE_3__*,char*,int ) ;
 struct st7789v* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int drm_panel_add (TYPE_2__*) ;
 TYPE_1__* of_find_backlight_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int put_device (int *) ;
 int spi_set_drvdata (struct spi_device*,struct st7789v*) ;
 int st7789v_drm_funcs ;

__attribute__((used)) static int st7789v_probe(struct spi_device *spi)
{
 struct device_node *backlight;
 struct st7789v *ctx;
 int ret;

 ctx = devm_kzalloc(&spi->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 spi_set_drvdata(spi, ctx);
 ctx->spi = spi;

 ctx->panel.dev = &spi->dev;
 ctx->panel.funcs = &st7789v_drm_funcs;

 ctx->power = devm_regulator_get(&spi->dev, "power");
 if (IS_ERR(ctx->power))
  return PTR_ERR(ctx->power);

 ctx->reset = devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->reset)) {
  dev_err(&spi->dev, "Couldn't get our reset line\n");
  return PTR_ERR(ctx->reset);
 }

 backlight = of_parse_phandle(spi->dev.of_node, "backlight", 0);
 if (backlight) {
  ctx->backlight = of_find_backlight_by_node(backlight);
  of_node_put(backlight);

  if (!ctx->backlight)
   return -EPROBE_DEFER;
 }

 ret = drm_panel_add(&ctx->panel);
 if (ret < 0)
  goto err_free_backlight;

 return 0;

err_free_backlight:
 if (ctx->backlight)
  put_device(&ctx->backlight->dev);

 return ret;
}
