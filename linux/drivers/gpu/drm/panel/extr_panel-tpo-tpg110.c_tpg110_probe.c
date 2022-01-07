
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; struct device* dev; } ;
struct tpg110 {TYPE_1__ panel; struct spi_device* spi; int grestb; int backlight; int height; int width; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct spi_device {int bits_per_word; int mode; struct device dev; } ;
struct device_node {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_3WIRE_HIZ ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct tpg110* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_find_backlight (struct device*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int spi_set_drvdata (struct spi_device*,struct tpg110*) ;
 int spi_setup (struct spi_device*) ;
 int tpg110_drm_funcs ;
 int tpg110_startup (struct tpg110*) ;

__attribute__((used)) static int tpg110_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct device_node *np = dev->of_node;
 struct tpg110 *tpg;
 int ret;

 tpg = devm_kzalloc(dev, sizeof(*tpg), GFP_KERNEL);
 if (!tpg)
  return -ENOMEM;
 tpg->dev = dev;


 ret = of_property_read_u32(np, "width-mm", &tpg->width);
 if (ret)
  DRM_DEV_ERROR(dev, "no panel width specified\n");
 ret = of_property_read_u32(np, "height-mm", &tpg->height);
 if (ret)
  DRM_DEV_ERROR(dev, "no panel height specified\n");


 tpg->backlight = devm_of_find_backlight(dev);
 if (IS_ERR(tpg->backlight))
  return PTR_ERR(tpg->backlight);


 tpg->grestb = devm_gpiod_get(dev, "grestb", GPIOD_OUT_HIGH);
 if (IS_ERR(tpg->grestb)) {
  DRM_DEV_ERROR(dev, "no GRESTB GPIO\n");
  return -ENODEV;
 }

 spi->bits_per_word = 8;
 spi->mode |= SPI_3WIRE_HIZ;
 ret = spi_setup(spi);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "spi setup failed.\n");
  return ret;
 }
 tpg->spi = spi;

 ret = tpg110_startup(tpg);
 if (ret)
  return ret;

 drm_panel_init(&tpg->panel);
 tpg->panel.dev = dev;
 tpg->panel.funcs = &tpg110_drm_funcs;
 spi_set_drvdata(spi, tpg);

 return drm_panel_add(&tpg->panel);
}
