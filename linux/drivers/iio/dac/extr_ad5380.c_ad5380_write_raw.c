
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5380_state {int regmap; } ;


 int AD5380_REG_OFFSET (int ) ;
 int EINVAL ;



 int ad5380_info_to_reg (struct iio_chan_spec const*,long) ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ad5380_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long info)
{
 const unsigned int max_val = (1 << chan->scan_type.realbits);
 struct ad5380_state *st = iio_priv(indio_dev);

 switch (info) {
 case 128:
 case 129:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return regmap_write(st->regmap,
   ad5380_info_to_reg(chan, info),
   val << chan->scan_type.shift);
 case 130:
  val += (1 << chan->scan_type.realbits) / 2;
  if (val >= max_val || val < 0)
   return -EINVAL;

  return regmap_write(st->regmap,
   AD5380_REG_OFFSET(chan->address),
   val << chan->scan_type.shift);
 default:
  break;
 }
 return -EINVAL;
}
