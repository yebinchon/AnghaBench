
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct cio_dac_iio {int* chan_out_states; scalar_t__ base; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 struct cio_dac_iio* iio_priv (struct iio_dev*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int cio_dac_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct cio_dac_iio *const priv = iio_priv(indio_dev);
 const unsigned int chan_addr_offset = 2 * chan->channel;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;


 if ((unsigned int)val > 65535)
  return -EINVAL;

 priv->chan_out_states[chan->channel] = val;
 outw(val, priv->base + chan_addr_offset);

 return 0;
}
