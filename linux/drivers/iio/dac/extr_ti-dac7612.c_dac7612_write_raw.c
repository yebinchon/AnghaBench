
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t channel; } ;
struct dac7612 {int* cache; } ;


 int BIT (int ) ;
 int DAC7612_RESOLUTION ;
 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int dac7612_cmd_single (struct dac7612*,size_t,int) ;
 struct dac7612* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dac7612_write_raw(struct iio_dev *iio_dev,
        const struct iio_chan_spec *chan,
        int val, int val2, long mask)
{
 struct dac7612 *priv = iio_priv(iio_dev);
 int ret;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if ((val >= BIT(DAC7612_RESOLUTION)) || val < 0 || val2)
  return -EINVAL;

 if (val == priv->cache[chan->channel])
  return 0;

 mutex_lock(&iio_dev->mlock);
 ret = dac7612_cmd_single(priv, chan->channel, val);
 mutex_unlock(&iio_dev->mlock);

 return ret;
}
