
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; int * dev; } ;
struct td028ttec1_panel {TYPE_1__ panel; struct spi_device* spi; int backlight; } ;
struct spi_device {int bits_per_word; int dev; int mode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;
 int dev_err (int *,char*,int) ;
 struct td028ttec1_panel* devm_kzalloc (int *,int,int ) ;
 int devm_of_find_backlight (int *) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int spi_set_drvdata (struct spi_device*,struct td028ttec1_panel*) ;
 int spi_setup (struct spi_device*) ;
 int td028ttec1_funcs ;

__attribute__((used)) static int td028ttec1_probe(struct spi_device *spi)
{
 struct td028ttec1_panel *lcd;
 int ret;

 lcd = devm_kzalloc(&spi->dev, sizeof(*lcd), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 spi_set_drvdata(spi, lcd);
 lcd->spi = spi;

 lcd->backlight = devm_of_find_backlight(&spi->dev);
 if (IS_ERR(lcd->backlight))
  return PTR_ERR(lcd->backlight);

 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 9;

 ret = spi_setup(spi);
 if (ret < 0) {
  dev_err(&spi->dev, "failed to setup SPI: %d\n", ret);
  return ret;
 }

 drm_panel_init(&lcd->panel);
 lcd->panel.dev = &lcd->spi->dev;
 lcd->panel.funcs = &td028ttec1_funcs;

 return drm_panel_add(&lcd->panel);
}
