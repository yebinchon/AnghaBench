
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_lsm6dsx_sensor {scalar_t__ ts_ref; } ;
struct st_lsm6dsx_hw {int enable_mask; struct iio_dev** iio_devs; } ;
struct iio_dev {int dummy; } ;
typedef scalar_t__ s64 ;


 int BIT (size_t) ;
 int EINVAL ;





 size_t ST_LSM6DSX_ID_ACC ;
 size_t ST_LSM6DSX_ID_EXT0 ;
 size_t ST_LSM6DSX_ID_EXT1 ;
 size_t ST_LSM6DSX_ID_EXT2 ;
 size_t ST_LSM6DSX_ID_GYRO ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,scalar_t__) ;

__attribute__((used)) static int
st_lsm6dsx_push_tagged_data(struct st_lsm6dsx_hw *hw, u8 tag,
       u8 *data, s64 ts)
{
 struct st_lsm6dsx_sensor *sensor;
 struct iio_dev *iio_dev;







 switch (tag) {
 case 128:
  iio_dev = hw->iio_devs[ST_LSM6DSX_ID_GYRO];
  break;
 case 132:
  iio_dev = hw->iio_devs[ST_LSM6DSX_ID_ACC];
  break;
 case 131:
  if (hw->enable_mask & BIT(ST_LSM6DSX_ID_EXT0))
   iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT0];
  else if (hw->enable_mask & BIT(ST_LSM6DSX_ID_EXT1))
   iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT1];
  else
   iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT2];
  break;
 case 130:
  if ((hw->enable_mask & BIT(ST_LSM6DSX_ID_EXT0)) &&
      (hw->enable_mask & BIT(ST_LSM6DSX_ID_EXT1)))
   iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT1];
  else
   iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT2];
  break;
 case 129:
  iio_dev = hw->iio_devs[ST_LSM6DSX_ID_EXT2];
  break;
 default:
  return -EINVAL;
 }

 sensor = iio_priv(iio_dev);
 iio_push_to_buffers_with_timestamp(iio_dev, data,
        ts + sensor->ts_ref);

 return 0;
}
