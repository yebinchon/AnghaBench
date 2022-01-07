
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_sensor {int ts_ref; } ;
struct st_lsm6dsx_hw {int * iio_devs; } ;


 int ST_LSM6DSX_ID_MAX ;
 int ST_LSM6DSX_REG_TS_RESET_ADDR ;
 int ST_LSM6DSX_TS_RESET_VAL ;
 int iio_get_time_ns (int ) ;
 struct st_lsm6dsx_sensor* iio_priv (int ) ;
 int st_lsm6dsx_write_locked (struct st_lsm6dsx_hw*,int ,int ) ;

__attribute__((used)) static int st_lsm6dsx_reset_hw_ts(struct st_lsm6dsx_hw *hw)
{
 struct st_lsm6dsx_sensor *sensor;
 int i, err;


 err = st_lsm6dsx_write_locked(hw, ST_LSM6DSX_REG_TS_RESET_ADDR,
          ST_LSM6DSX_TS_RESET_VAL);
 if (err < 0)
  return err;

 for (i = 0; i < ST_LSM6DSX_ID_MAX; i++) {
  if (!hw->iio_devs[i])
   continue;

  sensor = iio_priv(hw->iio_devs[i]);




  sensor->ts_ref = iio_get_time_ns(hw->iio_devs[i]);
 }
 return 0;
}
