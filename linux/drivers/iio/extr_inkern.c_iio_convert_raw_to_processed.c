
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_channel {TYPE_1__* indio_dev; } ;
struct TYPE_2__ {int info_exist_lock; int * info; } ;


 int ENODEV ;
 int iio_convert_raw_to_processed_unlocked (struct iio_channel*,int,int*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_convert_raw_to_processed(struct iio_channel *chan, int raw,
 int *processed, unsigned int scale)
{
 int ret;

 mutex_lock(&chan->indio_dev->info_exist_lock);
 if (chan->indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto err_unlock;
 }

 ret = iio_convert_raw_to_processed_unlocked(chan, raw, processed,
       scale);
err_unlock:
 mutex_unlock(&chan->indio_dev->info_exist_lock);

 return ret;
}
