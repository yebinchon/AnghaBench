
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad8801_state {int* dac_cache; int vrefh_mv; int vrefl_mv; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ad8801_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad8801_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct ad8801_state *state = iio_priv(indio_dev);

 switch (info) {
 case 129:
  *val = state->dac_cache[chan->channel];
  return IIO_VAL_INT;
 case 128:
  *val = state->vrefh_mv - state->vrefl_mv;
  *val2 = 8;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  *val = state->vrefl_mv;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
