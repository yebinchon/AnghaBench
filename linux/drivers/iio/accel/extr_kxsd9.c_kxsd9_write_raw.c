
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int dev; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_SCALE ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int kxsd9_write_scale (struct iio_dev*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int kxsd9_write_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int val,
      int val2,
      long mask)
{
 int ret = -EINVAL;
 struct kxsd9_state *st = iio_priv(indio_dev);

 pm_runtime_get_sync(st->dev);

 if (mask == IIO_CHAN_INFO_SCALE) {

  if (val)
   return -EINVAL;
  ret = kxsd9_write_scale(indio_dev, val2);
 }

 pm_runtime_mark_last_busy(st->dev);
 pm_runtime_put_autosuspend(st->dev);

 return ret;
}
