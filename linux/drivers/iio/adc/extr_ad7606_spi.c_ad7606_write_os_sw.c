
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7606_state {int dummy; } ;


 int AD7606_OS_MODE ;
 int ad7606_spi_reg_write (struct ad7606_state*,int ,int) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7606_write_os_sw(struct iio_dev *indio_dev, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 return ad7606_spi_reg_write(st, AD7606_OS_MODE, val);
}
