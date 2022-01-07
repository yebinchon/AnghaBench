
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {scalar_t__ driver_data; } ;
struct spi_device {int dummy; } ;
struct max1118 {int reg; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct max1118* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 scalar_t__ max1118 ;
 int regulator_disable (int ) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int max1118_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct max1118 *adc = iio_priv(indio_dev);
 const struct spi_device_id *id = spi_get_device_id(spi);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 if (id->driver_data == max1118)
  return regulator_disable(adc->reg);

 return 0;
}
