
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7768_state {int dummy; } ;


 int AD7768_REG_INTERFACE_FORMAT ;
 int ad7768_spi_reg_write (struct ad7768_state*,int ,int) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;

__attribute__((used)) static int ad7768_buffer_postenable(struct iio_dev *indio_dev)
{
 struct ad7768_state *st = iio_priv(indio_dev);

 iio_triggered_buffer_postenable(indio_dev);





 return ad7768_spi_reg_write(st, AD7768_REG_INTERFACE_FORMAT, 0x01);
}
