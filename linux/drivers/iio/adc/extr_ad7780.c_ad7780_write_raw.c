
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad7780_state {long long int_vref_mv; unsigned int gain; int filter_gpio; int odr; int gain_gpio; struct ad7780_chip_info* chip_info; } ;
struct TYPE_3__ {int realbits; } ;
struct TYPE_4__ {TYPE_1__ scan_type; } ;
struct ad7780_chip_info {TYPE_2__ channel; int is_ad778x; } ;


 int AD7780_FILTER_MIDPOINT ;
 unsigned int AD7780_GAIN_MIDPOINT ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 unsigned int DIV_ROUND_CLOSEST_ULL (unsigned long long,unsigned int) ;
 int EINVAL ;


 int * ad778x_odr_avail ;
 int gpiod_set_value (int ,int) ;
 struct ad7780_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7780_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long m)
{
 struct ad7780_state *st = iio_priv(indio_dev);
 const struct ad7780_chip_info *chip_info = st->chip_info;
 unsigned long long vref;
 unsigned int full_scale, gain;

 if (!chip_info->is_ad778x)
  return -EINVAL;

 switch (m) {
 case 128:
  if (val != 0)
   return -EINVAL;

  vref = st->int_vref_mv * 1000000LL;
  full_scale = 1 << (chip_info->channel.scan_type.realbits - 1);
  gain = DIV_ROUND_CLOSEST_ULL(vref, full_scale);
  gain = DIV_ROUND_CLOSEST(gain, val2);
  st->gain = gain;
  if (gain < AD7780_GAIN_MIDPOINT)
   gain = 0;
  else
   gain = 1;
  gpiod_set_value(st->gain_gpio, gain);
  break;
 case 129:
  if (1000*val + val2/1000 < AD7780_FILTER_MIDPOINT)
   val = 0;
  else
   val = 1;
  st->odr = ad778x_odr_avail[val];
  gpiod_set_value(st->filter_gpio, val);
  break;
 default:
  break;
 }

 return 0;
}
