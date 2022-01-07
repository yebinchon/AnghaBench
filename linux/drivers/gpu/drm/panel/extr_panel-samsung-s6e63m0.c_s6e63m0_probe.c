
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct spi_device {int bits_per_word; int mode; struct device dev; } ;
struct TYPE_5__ {int * funcs; struct device* dev; } ;
struct s6e63m0 {int enabled; int prepared; TYPE_1__ panel; int reset_gpio; TYPE_3__* supplies; struct device* dev; } ;
struct TYPE_6__ {char* supply; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct s6e63m0* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int ,TYPE_3__*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int s6e63m0_backlight_register (struct s6e63m0*) ;
 int s6e63m0_drm_funcs ;
 int spi_set_drvdata (struct spi_device*,struct s6e63m0*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int s6e63m0_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct s6e63m0 *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(struct s6e63m0), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 spi_set_drvdata(spi, ctx);

 ctx->dev = dev;
 ctx->enabled = 0;
 ctx->prepared = 0;

 ctx->supplies[0].supply = "vdd3";
 ctx->supplies[1].supply = "vci";
 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
          ctx->supplies);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "failed to get regulators: %d\n", ret);
  return ret;
 }

 ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(ctx->reset_gpio)) {
  DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
         PTR_ERR(ctx->reset_gpio));
  return PTR_ERR(ctx->reset_gpio);
 }

 spi->bits_per_word = 9;
 spi->mode = SPI_MODE_3;
 ret = spi_setup(spi);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "spi setup failed.\n");
  return ret;
 }

 drm_panel_init(&ctx->panel);
 ctx->panel.dev = dev;
 ctx->panel.funcs = &s6e63m0_drm_funcs;

 ret = s6e63m0_backlight_register(ctx);
 if (ret < 0)
  return ret;

 return drm_panel_add(&ctx->panel);
}
