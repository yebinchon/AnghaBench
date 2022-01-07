
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct spi_device {int dummy; } ;
struct adc0832 {int* tx_buf; int* rx_buf; int mux_bits; struct spi_device* spi; } ;


 int adc0831_adc_conversion (struct adc0832*) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;

__attribute__((used)) static int adc0832_adc_conversion(struct adc0832 *adc, int channel,
    bool differential)
{
 struct spi_device *spi = adc->spi;
 struct spi_transfer xfer = {
  .tx_buf = adc->tx_buf,
  .rx_buf = adc->rx_buf,
  .len = 2,
 };
 int ret;

 if (!adc->mux_bits)
  return adc0831_adc_conversion(adc);


 adc->tx_buf[0] = 1 << (adc->mux_bits + 1);

 adc->tx_buf[0] |= differential ? 0 : (1 << adc->mux_bits);

 adc->tx_buf[0] |= (channel % 2) << (adc->mux_bits - 1);

 if (adc->mux_bits > 1)
  adc->tx_buf[0] |= channel / 2;


 adc->tx_buf[0] <<= 1;

 ret = spi_sync_transfer(spi, &xfer, 1);
 if (ret)
  return ret;

 return adc->rx_buf[1];
}
