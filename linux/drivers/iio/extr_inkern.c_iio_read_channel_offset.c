
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int IIO_CHAN_INFO_OFFSET ;
 int iio_read_channel_attribute (struct iio_channel*,int*,int*,int ) ;

int iio_read_channel_offset(struct iio_channel *chan, int *val, int *val2)
{
 return iio_read_channel_attribute(chan, val, val2, IIO_CHAN_INFO_OFFSET);
}
