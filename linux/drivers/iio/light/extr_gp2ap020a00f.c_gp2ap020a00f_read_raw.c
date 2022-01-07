
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct gp2ap020a00f_data {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int IIO_VAL_INT ;
 int gp2ap020a00f_read_channel (struct gp2ap020a00f_data*,struct iio_chan_spec const*,int*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct gp2ap020a00f_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int gp2ap020a00f_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2,
      long mask)
{
 struct gp2ap020a00f_data *data = iio_priv(indio_dev);
 int err = -EINVAL;

 if (mask == IIO_CHAN_INFO_RAW) {
  err = iio_device_claim_direct_mode(indio_dev);
  if (err)
   return err;

  err = gp2ap020a00f_read_channel(data, chan, val);
  iio_device_release_direct_mode(indio_dev);
 }
 return err < 0 ? err : IIO_VAL_INT;
}
