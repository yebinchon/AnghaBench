
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct mcp4922_state {int vref_reg; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct mcp4922_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int mcp4922_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct mcp4922_state *state;

 iio_device_unregister(indio_dev);
 state = iio_priv(indio_dev);
 regulator_disable(state->vref_reg);

 return 0;
}
