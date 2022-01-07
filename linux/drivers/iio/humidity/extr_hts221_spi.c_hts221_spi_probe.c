
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int modalias; int irq; int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int hts221_probe (int *,int ,int ,struct regmap*) ;
 int hts221_spi_regmap_config ;

__attribute__((used)) static int hts221_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &hts221_spi_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Failed to register spi regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return hts221_probe(&spi->dev, spi->irq,
       spi->modalias, regmap);
}
