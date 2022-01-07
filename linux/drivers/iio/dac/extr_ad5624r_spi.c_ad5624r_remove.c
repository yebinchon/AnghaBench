
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad5624r_state {int reg; } ;


 int IS_ERR (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad5624r_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad5624r_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad5624r_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return 0;
}
