
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int max_speed_hz; int bits_per_word; int irq; int dev; int mode; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int SPI_MODE_0 ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int rm3100_common_probe (int *,struct regmap*,int ) ;
 int rm3100_regmap_config ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int rm3100_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 int ret;


 spi->mode = SPI_MODE_0;

 spi->max_speed_hz = 1000000;
 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret)
  return ret;

 regmap = devm_regmap_init_spi(spi, &rm3100_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return rm3100_common_probe(&spi->dev, regmap, spi->irq);
}
