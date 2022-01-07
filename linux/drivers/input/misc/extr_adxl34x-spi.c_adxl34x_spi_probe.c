
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ max_speed_hz; int irq; int dev; } ;
struct adxl34x {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct adxl34x*) ;
 scalar_t__ MAX_FREQ_NO_FIFODELAY ;
 scalar_t__ MAX_SPI_FREQ_HZ ;
 int PTR_ERR (struct adxl34x*) ;
 struct adxl34x* adxl34x_probe (int *,int ,int,int *) ;
 int adxl34x_spi_bops ;
 int dev_err (int *,char*,scalar_t__) ;
 int spi_set_drvdata (struct spi_device*,struct adxl34x*) ;

__attribute__((used)) static int adxl34x_spi_probe(struct spi_device *spi)
{
 struct adxl34x *ac;


 if (spi->max_speed_hz > MAX_SPI_FREQ_HZ) {
  dev_err(&spi->dev, "SPI CLK %d Hz too fast\n", spi->max_speed_hz);
  return -EINVAL;
 }

 ac = adxl34x_probe(&spi->dev, spi->irq,
      spi->max_speed_hz > MAX_FREQ_NO_FIFODELAY,
      &adxl34x_spi_bops);

 if (IS_ERR(ac))
  return PTR_ERR(ac);

 spi_set_drvdata(spi, ac);

 return 0;
}
