
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_sensor {int odr; int gain; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int st_lsm6dsx_read_oneshot (struct st_lsm6dsx_sensor*,int ,int*) ;

__attribute__((used)) static int st_lsm6dsx_read_raw(struct iio_dev *iio_dev,
          struct iio_chan_spec const *ch,
          int *val, int *val2, long mask)
{
 struct st_lsm6dsx_sensor *sensor = iio_priv(iio_dev);
 int ret;

 switch (mask) {
 case 130:
  ret = iio_device_claim_direct_mode(iio_dev);
  if (ret)
   break;

  ret = st_lsm6dsx_read_oneshot(sensor, ch->address, val);
  iio_device_release_direct_mode(iio_dev);
  break;
 case 129:
  *val = sensor->odr;
  ret = IIO_VAL_INT;
  break;
 case 128:
  *val = 0;
  *val2 = sensor->gain;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
