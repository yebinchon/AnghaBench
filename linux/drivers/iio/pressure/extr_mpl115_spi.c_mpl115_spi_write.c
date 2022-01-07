
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_device {int dummy; } ;
struct mpl115_spi_buf {int * tx; } ;
struct device {int dummy; } ;


 int MPL115_SPI_WRITE (int ) ;
 struct mpl115_spi_buf* spi_get_drvdata (struct spi_device*) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int mpl115_spi_write(struct device *dev, u8 address, u8 value)
{
 struct spi_device *spi = to_spi_device(dev);
 struct mpl115_spi_buf *buf = spi_get_drvdata(spi);
 struct spi_transfer xfer = {
  .tx_buf = buf->tx,
  .len = 2,
 };

 buf->tx[0] = MPL115_SPI_WRITE(address);
 buf->tx[1] = value;

 return spi_sync_transfer(spi, &xfer, 1);
}
