
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int bits_per_word; int irq; int dev; int max_speed_hz; int mode; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int SPI_MODE_3 ;
 int ZPA2326_DEVICE_ID ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int min (int ,unsigned int) ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;
 int zpa2326_probe (int *,int ,int ,int ,struct regmap*) ;
 int zpa2326_regmap_spi_config ;

__attribute__((used)) static int zpa2326_probe_spi(struct spi_device *spi)
{
 struct regmap *regmap;
 int err;

 regmap = devm_regmap_init_spi(spi, &zpa2326_regmap_spi_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "failed to init registers map");
  return PTR_ERR(regmap);
 }







 spi->mode = SPI_MODE_3;
 spi->max_speed_hz = min(spi->max_speed_hz, 1000000U);
 spi->bits_per_word = 8;
 err = spi_setup(spi);
 if (err < 0)
  return err;

 return zpa2326_probe(&spi->dev, spi_get_device_id(spi)->name,
        spi->irq, ZPA2326_DEVICE_ID, regmap);
}
