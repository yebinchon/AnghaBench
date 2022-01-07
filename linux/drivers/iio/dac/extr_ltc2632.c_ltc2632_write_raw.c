
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc2632_state {int spi_dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;


 int EINVAL ;

 int LTC2632_CMD_WRITE_INPUT_N_UPDATE_N ;
 struct ltc2632_state* iio_priv (struct iio_dev*) ;
 int ltc2632_spi_write (int ,int ,int ,int,int ) ;

__attribute__((used)) static int ltc2632_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val,
        int val2,
        long mask)
{
 struct ltc2632_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  return ltc2632_spi_write(st->spi_dev,
      LTC2632_CMD_WRITE_INPUT_N_UPDATE_N,
      chan->address, val,
      chan->scan_type.shift);
 default:
  return -EINVAL;
 }
}
