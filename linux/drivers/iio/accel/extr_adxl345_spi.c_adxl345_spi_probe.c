
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; int driver_data; } ;
struct spi_device {scalar_t__ max_speed_hz; int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ ADXL345_MAX_SPI_FREQ_HZ ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int adxl345_core_probe (int *,struct regmap*,int ,int ) ;
 int adxl345_spi_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int adxl345_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct regmap *regmap;


 if (spi->max_speed_hz > ADXL345_MAX_SPI_FREQ_HZ) {
  dev_err(&spi->dev, "SPI CLK, %d Hz exceeds 5 MHz\n",
   spi->max_speed_hz);
  return -EINVAL;
 }

 regmap = devm_regmap_init_spi(spi, &adxl345_spi_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Error initializing spi regmap: %ld\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return adxl345_core_probe(&spi->dev, regmap, id->driver_data, id->name);
}
