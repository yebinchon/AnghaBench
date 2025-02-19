
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max5432_data {int ohm; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 long IIO_CHAN_INFO_SCALE ;
 int IIO_VAL_FRACTIONAL ;
 int INT_MAX ;
 int MAX5432_MAX_POS ;
 struct max5432_data* iio_priv (struct iio_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int max5432_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2, long mask)
{
 struct max5432_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_SCALE)
  return -EINVAL;

 if (unlikely(data->ohm > INT_MAX))
  return -ERANGE;

 *val = data->ohm;
 *val2 = MAX5432_MAX_POS;

 return IIO_VAL_FRACTIONAL;
}
