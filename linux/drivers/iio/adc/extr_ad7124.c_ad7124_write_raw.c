
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_3__ {int realbits; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
struct ad7124_state {TYPE_2__* channel_config; } ;
struct TYPE_4__ {long long vref_mv; int bipolar; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EINVAL ;


 int ad7124_set_channel_gain (struct ad7124_state*,size_t,unsigned int) ;
 int ad7124_set_channel_odr (struct ad7124_state*,size_t,int) ;
 struct ad7124_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7124_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long info)
{
 struct ad7124_state *st = iio_priv(indio_dev);
 unsigned int res, gain, full_scale, vref;

 switch (info) {
 case 129:
  if (val2 != 0)
   return -EINVAL;

  return ad7124_set_channel_odr(st, chan->address, val);
 case 128:
  if (val != 0)
   return -EINVAL;

  if (st->channel_config[chan->address].bipolar)
   full_scale = 1 << (chan->scan_type.realbits - 1);
  else
   full_scale = 1 << chan->scan_type.realbits;

  vref = st->channel_config[chan->address].vref_mv * 1000000LL;
  res = DIV_ROUND_CLOSEST(vref, full_scale);
  gain = DIV_ROUND_CLOSEST(res, val2);

  return ad7124_set_channel_gain(st, chan->address, gain);
 default:
  return -EINVAL;
 }
}
