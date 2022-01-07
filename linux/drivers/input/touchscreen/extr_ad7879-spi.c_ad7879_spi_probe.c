
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ max_speed_hz; int irq; int dev; } ;
struct regmap {int dummy; } ;


 int AD7879_DEVID ;
 int BUS_SPI ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 scalar_t__ MAX_SPI_FREQ_HZ ;
 int PTR_ERR (struct regmap*) ;
 int ad7879_probe (int *,struct regmap*,int ,int ,int ) ;
 int ad7879_spi_regmap_config ;
 int dev_err (int *,char*,scalar_t__) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;

__attribute__((used)) static int ad7879_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;


 if (spi->max_speed_hz > MAX_SPI_FREQ_HZ) {
  dev_err(&spi->dev, "SPI CLK %d Hz?\n", spi->max_speed_hz);
  return -EINVAL;
 }

 regmap = devm_regmap_init_spi(spi, &ad7879_spi_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return ad7879_probe(&spi->dev, regmap, spi->irq, BUS_SPI, AD7879_DEVID);
}
