
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad8801_state {int* dac_cache; } ;


 int EINVAL ;

 int ad8801_spi_write (struct ad8801_state*,size_t,int) ;
 struct ad8801_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad8801_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct ad8801_state *state = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val >= 256 || val < 0)
   return -EINVAL;

  ret = ad8801_spi_write(state, chan->channel, val);
  if (ret == 0)
   state->dac_cache[chan->channel] = val;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
