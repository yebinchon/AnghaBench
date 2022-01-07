
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ads8688_state {int reg; } ;


 int IS_ERR (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ads8688_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ads8688_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);

 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return 0;
}
