
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_channel {TYPE_2__* indio_dev; TYPE_1__* channel; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_4__ {int info_exist_lock; int * info; } ;
struct TYPE_3__ {int type; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_get_channel_type(struct iio_channel *chan, enum iio_chan_type *type)
{
 int ret = 0;


 mutex_lock(&chan->indio_dev->info_exist_lock);
 if (chan->indio_dev->info == ((void*)0)) {
  ret = -ENODEV;
  goto err_unlock;
 }

 *type = chan->channel->type;
err_unlock:
 mutex_unlock(&chan->indio_dev->info_exist_lock);

 return ret;
}
