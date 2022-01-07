
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct st_lsm6dsx_sensor {int odr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int st_lsm6dsx_shub_get_odr_val (struct st_lsm6dsx_sensor*,int,int *) ;

__attribute__((used)) static int
st_lsm6dsx_shub_write_raw(struct iio_dev *iio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct st_lsm6dsx_sensor *sensor = iio_priv(iio_dev);
 int err;

 err = iio_device_claim_direct_mode(iio_dev);
 if (err)
  return err;

 switch (mask) {
 case 128: {
  u16 data;

  err = st_lsm6dsx_shub_get_odr_val(sensor, val, &data);
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
