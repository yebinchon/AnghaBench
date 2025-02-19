
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad8801_state {scalar_t__ vrefh_reg; scalar_t__ vrefl_reg; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ad8801_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad8801_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad8801_state *state = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 if (state->vrefl_reg)
  regulator_disable(state->vrefl_reg);
 regulator_disable(state->vrefh_reg);

 return 0;
}
