
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_channel {TYPE_1__* indio_dev; } ;
struct TYPE_2__ {int info_exist_lock; int * info; } ;


 int ENODEV ;
 int IIO_CHAN_INFO_AVERAGE_RAW ;
 int iio_channel_read (struct iio_channel*,int*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_read_channel_average_raw(struct iio_channel *chan, int *val)
{
 int ret;

 mutex_lock(&chan->indio_dev->info_exist_lock);
 if (chan->indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto err_unlock;
 }

 ret = iio_channel_read(chan, val, ((void*)0), IIO_CHAN_INFO_AVERAGE_RAW);
err_unlock:
 mutex_unlock(&chan->indio_dev->info_exist_lock);

 return ret;
}
