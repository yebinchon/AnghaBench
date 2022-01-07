
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;
struct ad5504_state {int dummy; } ;


 int EINVAL ;

 int ad5504_spi_write (struct ad5504_state*,int ,int) ;
 struct ad5504_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5504_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct ad5504_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  return ad5504_spi_write(st, chan->address, val);
 default:
  return -EINVAL;
 }
}
