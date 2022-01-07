
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 long IIO_CHAN_INFO_INT_TIME ;
 long IIO_CHAN_INFO_SCALE ;
 scalar_t__ IIO_LIGHT ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

__attribute__((used)) static int max44000_write_raw_get_fmt(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          long mask)
{
 if (mask == IIO_CHAN_INFO_INT_TIME && chan->type == IIO_LIGHT)
  return IIO_VAL_INT_PLUS_NANO;
 else if (mask == IIO_CHAN_INFO_SCALE && chan->type == IIO_LIGHT)
  return IIO_VAL_INT_PLUS_MICRO;
 else
  return IIO_VAL_INT;
}
