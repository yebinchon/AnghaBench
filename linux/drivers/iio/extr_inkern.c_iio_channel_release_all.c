
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {scalar_t__ indio_dev; } ;


 int iio_device_put (scalar_t__) ;
 int kfree (struct iio_channel*) ;

void iio_channel_release_all(struct iio_channel *channels)
{
 struct iio_channel *chan = &channels[0];

 while (chan->indio_dev) {
  iio_device_put(chan->indio_dev);
  chan++;
 }
 kfree(channels);
}
