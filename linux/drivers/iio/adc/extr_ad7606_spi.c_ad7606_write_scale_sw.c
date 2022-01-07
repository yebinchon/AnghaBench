
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7606_state {int dummy; } ;


 int AD7606_RANGE_CH_ADDR (int) ;
 int AD7606_RANGE_CH_MODE (int,int) ;
 int AD7606_RANGE_CH_MSK (int) ;
 int ad7606_spi_write_mask (struct ad7606_state*,int ,int ,int ) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7606_write_scale_sw(struct iio_dev *indio_dev, int ch, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 return ad7606_spi_write_mask(st,
         AD7606_RANGE_CH_ADDR(ch),
         AD7606_RANGE_CH_MSK(ch),
         AD7606_RANGE_CH_MODE(ch, val));
}
