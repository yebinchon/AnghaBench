
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max5481_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int MAX5481_MAX_POS ;
 int MAX5481_WRITE_WIPER ;
 struct max5481_data* iio_priv (struct iio_dev*) ;
 int max5481_write_cmd (struct max5481_data*,int ,int) ;

__attribute__((used)) static int max5481_write_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int val, int val2, long mask)
{
 struct max5481_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val < 0 || val > MAX5481_MAX_POS)
  return -EINVAL;

 return max5481_write_cmd(data, MAX5481_WRITE_WIPER, val);
}
