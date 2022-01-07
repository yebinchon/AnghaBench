
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int irq; int dev; } ;
struct ad714x_chip {int dummy; } ;


 int BUS_SPI ;
 scalar_t__ IS_ERR (struct ad714x_chip*) ;
 int PTR_ERR (struct ad714x_chip*) ;
 struct ad714x_chip* ad714x_probe (int *,int ,int ,int ,int ) ;
 int ad714x_spi_read ;
 int ad714x_spi_write ;
 int spi_set_drvdata (struct spi_device*,struct ad714x_chip*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ad714x_spi_probe(struct spi_device *spi)
{
 struct ad714x_chip *chip;
 int err;

 spi->bits_per_word = 8;
 err = spi_setup(spi);
 if (err < 0)
  return err;

 chip = ad714x_probe(&spi->dev, BUS_SPI, spi->irq,
       ad714x_spi_read, ad714x_spi_write);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 spi_set_drvdata(spi, chip);

 return 0;
}
