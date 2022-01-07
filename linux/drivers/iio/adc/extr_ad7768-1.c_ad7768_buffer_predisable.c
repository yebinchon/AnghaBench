
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7768_state {int dummy; } ;


 int AD7768_REG_ADC_DATA ;
 int ad7768_spi_reg_read (struct ad7768_state*,int ,int) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int ad7768_buffer_predisable(struct iio_dev *indio_dev)
{
 struct ad7768_state *st = iio_priv(indio_dev);
 int ret;





 ret = ad7768_spi_reg_read(st, AD7768_REG_ADC_DATA, 3);
 if (ret < 0)
  return ret;

 return iio_triggered_buffer_predisable(indio_dev);
}
