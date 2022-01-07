
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cros_ec_sensors_core_state {int frequencies; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int IIO_AVAIL_LIST ;

 int IIO_VAL_INT ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;

int cros_ec_sensors_core_read_avail(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        const int **vals,
        int *type,
        int *length,
        long mask)
{
 struct cros_ec_sensors_core_state *state = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  *length = ARRAY_SIZE(state->frequencies);
  *vals = (const int *)&state->frequencies;
  *type = IIO_VAL_INT;
  return IIO_AVAIL_LIST;
 }

 return -EINVAL;
}
