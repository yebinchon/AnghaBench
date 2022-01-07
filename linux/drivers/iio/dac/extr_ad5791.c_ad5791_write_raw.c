
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;
struct ad5791_state {int dummy; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;

 int ad5791_spi_write (struct ad5791_state*,int ,int) ;
 struct ad5791_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5791_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long mask)
{
 struct ad5791_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  val &= GENMASK(chan->scan_type.realbits - 1, 0);
  val <<= chan->scan_type.shift;

  return ad5791_spi_write(st, chan->address, val);

 default:
  return -EINVAL;
 }
}
