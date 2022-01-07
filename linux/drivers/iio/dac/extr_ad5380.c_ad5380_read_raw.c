
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5380_state {int vref; int regmap; } ;


 int AD5380_REG_OFFSET (int ) ;
 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5380_info_to_reg (struct iio_chan_spec const*,long) ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int ad5380_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct ad5380_state *st = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 129:
 case 130:
  ret = regmap_read(st->regmap, ad5380_info_to_reg(chan, info),
     val);
  if (ret)
   return ret;
  *val >>= chan->scan_type.shift;
  return IIO_VAL_INT;
 case 131:
  ret = regmap_read(st->regmap, AD5380_REG_OFFSET(chan->address),
     val);
  if (ret)
   return ret;
  *val >>= chan->scan_type.shift;
  *val -= (1 << chan->scan_type.realbits) / 2;
  return IIO_VAL_INT;
 case 128:
  *val = 2 * st->vref;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }

 return -EINVAL;
}
