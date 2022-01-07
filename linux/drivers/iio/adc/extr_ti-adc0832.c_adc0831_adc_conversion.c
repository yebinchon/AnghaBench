
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct adc0832 {int* rx_buf; struct spi_device* spi; } ;


 int spi_read (struct spi_device*,int**,int) ;

__attribute__((used)) static int adc0831_adc_conversion(struct adc0832 *adc)
{
 struct spi_device *spi = adc->spi;
 int ret;

 ret = spi_read(spi, &adc->rx_buf, 2);
 if (ret)
  return ret;




 return (adc->rx_buf[0] << 2 & 0xff) | (adc->rx_buf[1] >> 6);
}
