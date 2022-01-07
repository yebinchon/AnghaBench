
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_channel {TYPE_1__* indio_dev; int channel; } ;
struct TYPE_2__ {int info_exist_lock; int * info; } ;


 int ENODEV ;
 int IIO_CHAN_INFO_PROCESSED ;
 int IIO_CHAN_INFO_RAW ;
 scalar_t__ iio_channel_has_info (int ,int ) ;
 int iio_channel_read (struct iio_channel*,int*,int *,int ) ;
 int iio_convert_raw_to_processed_unlocked (struct iio_channel*,int,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_read_channel_processed(struct iio_channel *chan, int *val)
{
 int ret;

 mutex_lock(&chan->indio_dev->info_exist_lock);
 if (chan->indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto err_unlock;
 }

 if (iio_channel_has_info(chan->channel, IIO_CHAN_INFO_PROCESSED)) {
  ret = iio_channel_read(chan, val, ((void*)0),
           IIO_CHAN_INFO_PROCESSED);
 } else {
  ret = iio_channel_read(chan, val, ((void*)0), IIO_CHAN_INFO_RAW);
  if (ret < 0)
   goto err_unlock;
  ret = iio_convert_raw_to_processed_unlocked(chan, *val, val, 1);
 }

err_unlock:
 mutex_unlock(&chan->indio_dev->info_exist_lock);

 return ret;
}
