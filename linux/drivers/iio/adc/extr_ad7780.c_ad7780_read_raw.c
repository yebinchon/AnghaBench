
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad7780_state {int gain; int int_vref_mv; int odr; int reg; } ;


 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad_sigma_delta_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 struct ad7780_state* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7780_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad7780_state *st = iio_priv(indio_dev);
 int voltage_uv;

 switch (m) {
 case 130:
  return ad_sigma_delta_single_conversion(indio_dev, chan, val);
 case 128:
  voltage_uv = regulator_get_voltage(st->reg);
  if (voltage_uv < 0)
   return voltage_uv;
  voltage_uv /= 1000;
  *val = voltage_uv * st->gain;
  *val2 = chan->scan_type.realbits - 1;
  st->int_vref_mv = voltage_uv;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 131:
  *val = -(1 << (chan->scan_type.realbits - 1));
  return IIO_VAL_INT;
 case 129:
  *val = st->odr;
  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
