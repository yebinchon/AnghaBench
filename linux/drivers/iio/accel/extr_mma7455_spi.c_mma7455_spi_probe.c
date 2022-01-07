
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; } ;
struct spi_device {int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int mma7455_core_probe (int *,struct regmap*,int ) ;
 int mma7455_core_regmap ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int mma7455_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &mma7455_core_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return mma7455_core_probe(&spi->dev, regmap, id->name);
}
