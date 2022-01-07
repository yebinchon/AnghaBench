
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5624r_state {int us; } ;


 int AD5624R_CMD_WRITE_INPUT_N_UPDATE_N ;
 int EINVAL ;

 int ad5624r_spi_write (int ,int ,int ,int,int ) ;
 struct ad5624r_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5624r_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct ad5624r_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  return ad5624r_spi_write(st->us,
    AD5624R_CMD_WRITE_INPUT_N_UPDATE_N,
    chan->address, val,
    chan->scan_type.shift);
 default:
  return -EINVAL;
 }
}
