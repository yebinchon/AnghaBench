
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int bits_per_word; int max_speed_hz; int mode; } ;
struct cxd2880_spi_device {struct spi_device* spi; } ;
typedef enum cxd2880_spi_mode { ____Placeholder_cxd2880_spi_mode } cxd2880_spi_mode ;






 int EINVAL ;
 int SPI_MODE_0 ;
 int SPI_MODE_1 ;
 int SPI_MODE_2 ;
 int SPI_MODE_3 ;
 int pr_err (char*,int) ;
 int spi_setup (struct spi_device*) ;

int
cxd2880_spi_device_initialize(struct cxd2880_spi_device *spi_device,
         enum cxd2880_spi_mode mode,
         u32 speed_hz)
{
 int result = 0;
 struct spi_device *spi = spi_device->spi;

 switch (mode) {
 case 131:
  spi->mode = SPI_MODE_0;
  break;
 case 130:
  spi->mode = SPI_MODE_1;
  break;
 case 129:
  spi->mode = SPI_MODE_2;
  break;
 case 128:
  spi->mode = SPI_MODE_3;
  break;
 default:
  return -EINVAL;
 }

 spi->max_speed_hz = speed_hz;
 spi->bits_per_word = 8;
 result = spi_setup(spi);
 if (result != 0) {
  pr_err("spi_setup failed %d\n", result);
  return -EINVAL;
 }

 return 0;
}
