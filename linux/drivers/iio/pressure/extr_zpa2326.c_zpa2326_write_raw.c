
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_SAMP_FREQ ;
 int zpa2326_set_frequency (struct iio_dev*,int) ;

__attribute__((used)) static int zpa2326_write_raw(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        int val,
        int val2,
        long mask)
{
 if ((mask != IIO_CHAN_INFO_SAMP_FREQ) || val2)
  return -EINVAL;

 return zpa2326_set_frequency(indio_dev, val);
}
