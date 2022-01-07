
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad7766 {TYPE_2__* chip_info; int mclk; TYPE_3__* reg; } ;
struct TYPE_6__ {struct regulator* consumer; } ;
struct TYPE_5__ {int decimation_factor; } ;


 size_t AD7766_SUPPLY_VREF ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int clk_get_rate (int ) ;
 struct ad7766* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (struct regulator*) ;

__attribute__((used)) static int ad7766_read_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
 struct ad7766 *ad7766 = iio_priv(indio_dev);
 struct regulator *vref = ad7766->reg[AD7766_SUPPLY_VREF].consumer;
 int scale_uv;

 switch (info) {
 case 128:
  scale_uv = regulator_get_voltage(vref);
  if (scale_uv < 0)
   return scale_uv;
  *val = scale_uv / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 129:
  *val = clk_get_rate(ad7766->mclk) /
   ad7766->chip_info->decimation_factor;
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
