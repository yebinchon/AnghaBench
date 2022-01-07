
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int* tx_buf; int len; int rx_buf; } ;
struct adc12138 {int* tx_buf; scalar_t__ id; int rx_buf; int spi; } ;


 scalar_t__ adc12138 ;
 int memcpy (void*,int ,int) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int adc12138_mode_programming(struct adc12138 *adc, u8 mode,
         void *rx_buf, int len)
{
 struct spi_transfer xfer = {
  .tx_buf = adc->tx_buf,
  .rx_buf = adc->rx_buf,
  .len = len,
 };
 int ret;


 if (adc->id != adc12138)
  mode = (mode & 0xc0) | ((mode & 0x0f) << 2);

 adc->tx_buf[0] = mode;

 ret = spi_sync_transfer(adc->spi, &xfer, 1);
 if (ret)
  return ret;

 memcpy(rx_buf, adc->rx_buf, len);

 return 0;
}
