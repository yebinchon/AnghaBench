
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct cio_dac_iio {int* chan_out_states; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int IIO_VAL_INT ;
 struct cio_dac_iio* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cio_dac_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
 struct cio_dac_iio *const priv = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 *val = priv->chan_out_states[chan->channel];

 return IIO_VAL_INT;
}
