
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int IIO_VAL_INT_PLUS_NANO ;

__attribute__((used)) static int hx711_write_raw_get_fmt(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  long mask)
{
 return IIO_VAL_INT_PLUS_NANO;
}
