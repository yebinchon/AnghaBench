
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int * funcs; int * dev; } ;
struct lb035q02_device {TYPE_1__ panel; struct spi_device* spi; int enable_gpio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct lb035q02_device* devm_kzalloc (int *,int,int ) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int lb035q02_funcs ;
 int lb035q02_init (struct lb035q02_device*) ;
 int spi_set_drvdata (struct spi_device*,struct lb035q02_device*) ;

__attribute__((used)) static int lb035q02_probe(struct spi_device *spi)
{
 struct lb035q02_device *lcd;
 int ret;

 lcd = devm_kzalloc(&spi->dev, sizeof(*lcd), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 spi_set_drvdata(spi, lcd);
 lcd->spi = spi;

 lcd->enable_gpio = devm_gpiod_get(&spi->dev, "enable", GPIOD_OUT_LOW);
 if (IS_ERR(lcd->enable_gpio)) {
  dev_err(&spi->dev, "failed to parse enable gpio\n");
  return PTR_ERR(lcd->enable_gpio);
 }

 ret = lb035q02_init(lcd);
 if (ret < 0)
  return ret;

 drm_panel_init(&lcd->panel);
 lcd->panel.dev = &lcd->spi->dev;
 lcd->panel.funcs = &lb035q02_funcs;

 return drm_panel_add(&lcd->panel);
}
