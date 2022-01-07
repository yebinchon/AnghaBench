
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_CALIBBIAS ;

__attribute__((used)) static int cros_ec_accel_legacy_write(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{




 if (mask == IIO_CHAN_INFO_CALIBBIAS)
  return 0;

 return -EINVAL;
}
