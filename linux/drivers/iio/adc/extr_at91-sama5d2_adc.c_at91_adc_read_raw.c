
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int differential; } ;
struct at91_adc_state {int vref_uv; int oversampling_ratio; } ;


 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int at91_adc_get_sample_freq (struct at91_adc_state*) ;
 int at91_adc_read_info_raw (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int at91_adc_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct at91_adc_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  return at91_adc_read_info_raw(indio_dev, chan, val);
 case 128:
  *val = st->vref_uv / 1000;
  if (chan->differential)
   *val *= 2;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;

 case 129:
  *val = at91_adc_get_sample_freq(st);
  return IIO_VAL_INT;

 case 131:
  *val = st->oversampling_ratio;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
