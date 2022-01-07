
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct iio_dev {int dummy; } ;


 int MAX5487_COPY_AB_TO_NV ;
 struct iio_dev* dev_get_drvdata (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 int max5487_write_cmd (struct spi_device*,int ) ;

__attribute__((used)) static int max5487_spi_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = dev_get_drvdata(&spi->dev);

 iio_device_unregister(indio_dev);


 return max5487_write_cmd(spi, MAX5487_COPY_AB_TO_NV);
}
