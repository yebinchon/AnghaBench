
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int driver_data; } ;
struct spi_device {int irq; int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int st_lsm6dsx_probe (int *,int ,int,struct regmap*) ;
 int st_lsm6dsx_spi_regmap_config ;

__attribute__((used)) static int st_lsm6dsx_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 int hw_id = id->driver_data;
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &st_lsm6dsx_spi_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Failed to register spi regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return st_lsm6dsx_probe(&spi->dev, spi->irq, hw_id, regmap);
}
