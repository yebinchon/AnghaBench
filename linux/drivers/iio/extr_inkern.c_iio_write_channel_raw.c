
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int IIO_CHAN_INFO_RAW ;
 int iio_write_channel_attribute (struct iio_channel*,int,int ,int ) ;

int iio_write_channel_raw(struct iio_channel *chan, int val)
{
 return iio_write_channel_attribute(chan, val, 0, IIO_CHAN_INFO_RAW);
}
