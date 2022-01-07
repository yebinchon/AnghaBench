
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {scalar_t__ irq; } ;
struct iio_dev {int dummy; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;


 int IIO_PRESSURE ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct zpa2326_private* iio_priv (struct iio_dev*) ;
 int zpa2326_clear_fifo (struct iio_dev*,int ) ;
 int zpa2326_config_oneshot (struct iio_dev*,scalar_t__) ;
 int zpa2326_fetch_raw_sample (struct iio_dev*,int,int*) ;
 int zpa2326_poll_oneshot_completion (struct iio_dev*) ;
 int zpa2326_resume (struct iio_dev*) ;
 int zpa2326_start_oneshot (struct iio_dev*) ;
 int zpa2326_suspend (struct iio_dev*) ;
 int zpa2326_wait_oneshot_completion (struct iio_dev*,struct zpa2326_private*) ;

__attribute__((used)) static int zpa2326_sample_oneshot(struct iio_dev *indio_dev,
      enum iio_chan_type type,
      int *value)
{
 int ret;
 struct zpa2326_private *priv;

 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret)
  return ret;

 ret = zpa2326_resume(indio_dev);
 if (ret < 0)
  goto release;

 priv = iio_priv(indio_dev);

 if (ret > 0) {
  if (type == IIO_PRESSURE) {
   ret = zpa2326_clear_fifo(indio_dev, 0);
   if (ret)
    goto suspend;
  }
 } else {





  ret = zpa2326_config_oneshot(indio_dev, priv->irq);
  if (ret)
   goto suspend;
 }


 ret = zpa2326_start_oneshot(indio_dev);
 if (ret)
  goto suspend;


 if (priv->irq > 0)
  ret = zpa2326_wait_oneshot_completion(indio_dev, priv);
 else
  ret = zpa2326_poll_oneshot_completion(indio_dev);

 if (ret)
  goto suspend;


 ret = zpa2326_fetch_raw_sample(indio_dev, type, value);

suspend:
 zpa2326_suspend(indio_dev);
release:
 iio_device_release_direct_mode(indio_dev);

 return ret;
}
