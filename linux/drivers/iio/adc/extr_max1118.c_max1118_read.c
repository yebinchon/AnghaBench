
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int delay_usecs; int cs_change; int* rx_buf; } ;
struct spi_device {int dummy; } ;
struct max1118 {int data; } ;
struct iio_dev {int dummy; } ;


 struct max1118* iio_priv (struct iio_dev*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;

__attribute__((used)) static int max1118_read(struct spi_device *spi, int channel)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct max1118 *adc = iio_priv(indio_dev);
 struct spi_transfer xfers[] = {




  {
   .len = 0,
   .delay_usecs = 1,
   .cs_change = 1,
  },





  {
   .len = 0,
   .delay_usecs = 8,
  },
  {
   .rx_buf = &adc->data,
   .len = 1,
  },
 };
 int ret;

 if (channel == 0)
  ret = spi_sync_transfer(spi, xfers + 1, 2);
 else
  ret = spi_sync_transfer(spi, xfers, 3);

 if (ret)
  return ret;

 return adc->data;
}
