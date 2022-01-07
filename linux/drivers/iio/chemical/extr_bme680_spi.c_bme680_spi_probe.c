
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; } ;
struct spi_device {int bits_per_word; int dev; } ;
struct regmap {int dummy; } ;
struct bme680_spi_bus_context {int current_page; struct spi_device* spi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int bme680_core_probe (int *,struct regmap*,int ) ;
 int bme680_regmap_bus ;
 int bme680_regmap_config ;
 int dev_err (int *,char*,...) ;
 struct bme680_spi_bus_context* devm_kzalloc (int *,int,int ) ;
 struct regmap* devm_regmap_init (int *,int *,struct bme680_spi_bus_context*,int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int bme680_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct bme680_spi_bus_context *bus_context;
 struct regmap *regmap;
 int ret;

 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret < 0) {
  dev_err(&spi->dev, "spi_setup failed!\n");
  return ret;
 }

 bus_context = devm_kzalloc(&spi->dev, sizeof(*bus_context), GFP_KERNEL);
 if (!bus_context)
  return -ENOMEM;

 bus_context->spi = spi;
 bus_context->current_page = 0xff;

 regmap = devm_regmap_init(&spi->dev, &bme680_regmap_bus,
      bus_context, &bme680_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Failed to register spi regmap %d\n",
    (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return bme680_core_probe(&spi->dev, regmap, id->name);
}
