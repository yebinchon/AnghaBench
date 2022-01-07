
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ngpio; char* label; int base; int can_sleep; int owner; int * parent; int dbg_show; int set; int get; int get_direction; int direction_output; int direction_input; } ;
struct xra1403 {TYPE_1__ chip; struct gpio_desc* regmap; } ;
struct spi_device {int dev; } ;
struct gpio_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct xra1403*) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 struct xra1403* devm_kzalloc (int *,int,int ) ;
 struct gpio_desc* devm_regmap_init_spi (struct spi_device*,int *) ;
 int spi_set_drvdata (struct spi_device*,struct xra1403*) ;
 int xra1403_dbg_show ;
 int xra1403_direction_input ;
 int xra1403_direction_output ;
 int xra1403_get ;
 int xra1403_get_direction ;
 int xra1403_regmap_cfg ;
 int xra1403_set ;

__attribute__((used)) static int xra1403_probe(struct spi_device *spi)
{
 struct xra1403 *xra;
 struct gpio_desc *reset_gpio;
 int ret;

 xra = devm_kzalloc(&spi->dev, sizeof(*xra), GFP_KERNEL);
 if (!xra)
  return -ENOMEM;


 reset_gpio = devm_gpiod_get_optional(&spi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(reset_gpio))
  dev_warn(&spi->dev, "Could not get reset-gpios\n");

 xra->chip.direction_input = xra1403_direction_input;
 xra->chip.direction_output = xra1403_direction_output;
 xra->chip.get_direction = xra1403_get_direction;
 xra->chip.get = xra1403_get;
 xra->chip.set = xra1403_set;

 xra->chip.dbg_show = xra1403_dbg_show;

 xra->chip.ngpio = 16;
 xra->chip.label = "xra1403";

 xra->chip.base = -1;
 xra->chip.can_sleep = 1;
 xra->chip.parent = &spi->dev;
 xra->chip.owner = THIS_MODULE;

 xra->regmap = devm_regmap_init_spi(spi, &xra1403_regmap_cfg);
 if (IS_ERR(xra->regmap)) {
  ret = PTR_ERR(xra->regmap);
  dev_err(&spi->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 ret = devm_gpiochip_add_data(&spi->dev, &xra->chip, xra);
 if (ret < 0) {
  dev_err(&spi->dev, "Unable to register gpiochip\n");
  return ret;
 }

 spi_set_drvdata(spi, xra);

 return 0;
}
