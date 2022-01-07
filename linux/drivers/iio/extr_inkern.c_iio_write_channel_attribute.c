
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_channel {TYPE_1__* indio_dev; } ;
typedef enum iio_chan_info_enum { ____Placeholder_iio_chan_info_enum } iio_chan_info_enum ;
struct TYPE_2__ {int info_exist_lock; int * info; } ;


 int ENODEV ;
 int iio_channel_write (struct iio_channel*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_write_channel_attribute(struct iio_channel *chan, int val, int val2,
    enum iio_chan_info_enum attribute)
{
 int ret;

 mutex_lock(&chan->indio_dev->info_exist_lock);
 if (chan->indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto err_unlock;
 }

 ret = iio_channel_write(chan, val, val2, attribute);
err_unlock:
 mutex_unlock(&chan->indio_dev->info_exist_lock);

 return ret;
}
