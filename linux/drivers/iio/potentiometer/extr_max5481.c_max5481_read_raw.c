
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max5481_data {TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int kohms; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_SCALE ;
 int IIO_VAL_FRACTIONAL ;
 int MAX5481_MAX_POS ;
 struct max5481_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max5481_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int *val, int *val2, long mask)
{
 struct max5481_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_SCALE)
  return -EINVAL;

 *val = 1000 * data->cfg->kohms;
 *val2 = MAX5481_MAX_POS;

 return IIO_VAL_FRACTIONAL;
}
