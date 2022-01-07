
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct dac7612 {int* cache; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 struct dac7612* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dac7612_read_raw(struct iio_dev *iio_dev,
       const struct iio_chan_spec *chan,
       int *val, int *val2, long mask)
{
 struct dac7612 *priv;

 switch (mask) {
 case 129:
  priv = iio_priv(iio_dev);
  *val = priv->cache[chan->channel];
  return IIO_VAL_INT;

 case 128:
  *val = 1;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
