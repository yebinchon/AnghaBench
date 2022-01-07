
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; int driver_data; } ;
struct spi_device {int max_speed_hz; int bits_per_word; int dev; int mode; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int SPI_MODE_3 ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int hmc5843_common_probe (int *,struct regmap*,int ,int ) ;
 int hmc5843_spi_regmap_config ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int hmc5843_spi_probe(struct spi_device *spi)
{
 int ret;
 struct regmap *regmap;
 const struct spi_device_id *id = spi_get_device_id(spi);

 spi->mode = SPI_MODE_3;
 spi->max_speed_hz = 8000000;
 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret)
  return ret;

 regmap = devm_regmap_init_spi(spi, &hmc5843_spi_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return hmc5843_common_probe(&spi->dev,
   regmap,
   id->driver_data, id->name);
}
