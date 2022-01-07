
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct max5481_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 int MAX5481_COPY_AB_TO_NV ;
 struct iio_dev* dev_get_drvdata (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct max5481_data* iio_priv (struct iio_dev*) ;
 int max5481_write_cmd (struct max5481_data*,int ,int ) ;

__attribute__((used)) static int max5481_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = dev_get_drvdata(&spi->dev);
 struct max5481_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);


 return max5481_write_cmd(data, MAX5481_COPY_AB_TO_NV, 0);
}
