
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_gcq_priv {int* channel_vref_mv; } ;
struct iio_dev {int mlock; int dev; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 struct mx25_gcq_priv* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mx25_gcq_get_raw_value (int *,struct iio_chan_spec const*,struct mx25_gcq_priv*,int*) ;

__attribute__((used)) static int mx25_gcq_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 struct mx25_gcq_priv *priv = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&indio_dev->mlock);
  ret = mx25_gcq_get_raw_value(&indio_dev->dev, chan, priv, val);
  mutex_unlock(&indio_dev->mlock);
  return ret;

 case 128:
  *val = priv->channel_vref_mv[chan->channel];
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
