
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ads8344 {int rx_buf; int tx_buf; struct spi_device* spi; } ;


 int ADS8344_CHANNEL (int) ;
 int ADS8344_CLOCK_INTERNAL ;
 int ADS8344_SINGLE_END ;
 int ADS8344_START ;
 int spi_read (struct spi_device*,int*,int) ;
 int spi_write (struct spi_device*,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static int ads8344_adc_conversion(struct ads8344 *adc, int channel,
      bool differential)
{
 struct spi_device *spi = adc->spi;
 int ret;

 adc->tx_buf = ADS8344_START;
 if (!differential)
  adc->tx_buf |= ADS8344_SINGLE_END;
 adc->tx_buf |= ADS8344_CHANNEL(channel);
 adc->tx_buf |= ADS8344_CLOCK_INTERNAL;

 ret = spi_write(spi, &adc->tx_buf, 1);
 if (ret)
  return ret;

 udelay(9);

 ret = spi_read(spi, &adc->rx_buf, 2);
 if (ret)
  return ret;

 return adc->rx_buf;
}
