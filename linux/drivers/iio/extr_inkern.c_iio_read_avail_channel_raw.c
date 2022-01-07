
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int EINVAL ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_VAL_INT ;
 int iio_read_avail_channel_attribute (struct iio_channel*,int const**,int*,int*,int ) ;

int iio_read_avail_channel_raw(struct iio_channel *chan,
          const int **vals, int *length)
{
 int ret;
 int type;

 ret = iio_read_avail_channel_attribute(chan, vals, &type, length,
      IIO_CHAN_INFO_RAW);

 if (ret >= 0 && type != IIO_VAL_INT)

  ret = -EINVAL;

 return ret;
}
