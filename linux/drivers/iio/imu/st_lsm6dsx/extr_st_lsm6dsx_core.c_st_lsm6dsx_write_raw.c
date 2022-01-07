
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_lsm6dsx_sensor {int odr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int st_lsm6dsx_check_odr (struct st_lsm6dsx_sensor*,int,int *) ;
 int st_lsm6dsx_set_full_scale (struct st_lsm6dsx_sensor*,int) ;

__attribute__((used)) static int st_lsm6dsx_write_raw(struct iio_dev *iio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct st_lsm6dsx_sensor *sensor = iio_priv(iio_dev);
 int err;

 err = iio_device_claim_direct_mode(iio_dev);
 if (err)
  return err;

 switch (mask) {
 case 128:
  err = st_lsm6dsx_set_full_scale(sensor, val2);
  break;
 case 129: {
  u8 data;

  err = st_lsm6dsx_check_odr(sensor, val, &data);
  if (!err)
   sensor->odr = val;
  break;
 }
 default:
  err = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(iio_dev);

 return err;
}
