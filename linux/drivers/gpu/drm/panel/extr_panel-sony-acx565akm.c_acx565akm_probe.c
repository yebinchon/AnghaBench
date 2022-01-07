
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; int mode; } ;
struct TYPE_3__ {int * funcs; int * dev; } ;
struct acx565akm_panel {scalar_t__ has_bc; TYPE_1__ panel; struct spi_device* spi; int reset_gpio; int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;
 int acx565akm_backlight_cleanup (struct acx565akm_panel*) ;
 int acx565akm_backlight_init (struct acx565akm_panel*) ;
 int acx565akm_detect (struct acx565akm_panel*) ;
 int acx565akm_funcs ;
 int dev_err (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct acx565akm_panel* devm_kzalloc (int *,int,int ) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct acx565akm_panel*) ;

__attribute__((used)) static int acx565akm_probe(struct spi_device *spi)
{
 struct acx565akm_panel *lcd;
 int ret;

 lcd = devm_kzalloc(&spi->dev, sizeof(*lcd), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 spi_set_drvdata(spi, lcd);
 spi->mode = SPI_MODE_3;

 lcd->spi = spi;
 mutex_init(&lcd->mutex);

 lcd->reset_gpio = devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(lcd->reset_gpio)) {
  dev_err(&spi->dev, "failed to get reset GPIO\n");
  return PTR_ERR(lcd->reset_gpio);
 }

 ret = acx565akm_detect(lcd);
 if (ret < 0) {
  dev_err(&spi->dev, "panel detection failed\n");
  return ret;
 }

 if (lcd->has_bc) {
  ret = acx565akm_backlight_init(lcd);
  if (ret < 0)
   return ret;
 }

 drm_panel_init(&lcd->panel);
 lcd->panel.dev = &lcd->spi->dev;
 lcd->panel.funcs = &acx565akm_funcs;

 ret = drm_panel_add(&lcd->panel);
 if (ret < 0) {
  if (lcd->has_bc)
   acx565akm_backlight_cleanup(lcd);
  return ret;
 }

 return 0;
}
