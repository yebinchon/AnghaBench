
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int indio_dev; } ;


 int iio_device_put (int ) ;
 int kfree (struct iio_channel*) ;

void iio_channel_release(struct iio_channel *channel)
{
 if (!channel)
  return;
 iio_device_put(channel->indio_dev);
 kfree(channel);
}
