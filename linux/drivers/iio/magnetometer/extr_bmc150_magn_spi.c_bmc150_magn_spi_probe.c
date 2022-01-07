
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int name; } ;
struct spi_device {int irq; int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int bmc150_magn_probe (int *,struct regmap*,int ,int ) ;
 int bmc150_magn_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int bmc150_magn_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 const struct spi_device_id *id = spi_get_device_id(spi);

 regmap = devm_regmap_init_spi(spi, &bmc150_magn_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Failed to register spi regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }
 return bmc150_magn_probe(&spi->dev, regmap, spi->irq, id->name);
}
