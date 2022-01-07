
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dpot_dac {int dpot; } ;


 int EINVAL ;

 int IIO_VAL_INT ;
 struct dpot_dac* iio_priv (struct iio_dev*) ;
 int iio_read_avail_channel_raw (int ,int const**,int*) ;

__attribute__((used)) static int dpot_dac_read_avail(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          const int **vals, int *type, int *length,
          long mask)
{
 struct dpot_dac *dac = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  *type = IIO_VAL_INT;
  return iio_read_avail_channel_raw(dac->dpot, vals, length);
 }

 return -EINVAL;
}
