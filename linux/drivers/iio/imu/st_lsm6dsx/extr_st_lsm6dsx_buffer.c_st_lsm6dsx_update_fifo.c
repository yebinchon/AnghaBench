
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_sensor {scalar_t__ id; int watermark; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {scalar_t__ fifo_mode; int conf_lock; scalar_t__ enable_mask; } ;


 scalar_t__ ST_LSM6DSX_FIFO_BYPASS ;
 int ST_LSM6DSX_FIFO_CONT ;
 scalar_t__ ST_LSM6DSX_ID_EXT0 ;
 scalar_t__ ST_LSM6DSX_ID_EXT1 ;
 scalar_t__ ST_LSM6DSX_ID_EXT2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st_lsm6dsx_flush_fifo (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_reset_hw_ts (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_sensor_set_enable (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_set_fifo_mode (struct st_lsm6dsx_hw*,int ) ;
 int st_lsm6dsx_set_fifo_odr (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_shub_set_enable (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_update_decimators (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_update_watermark (struct st_lsm6dsx_sensor*,int ) ;

int st_lsm6dsx_update_fifo(struct st_lsm6dsx_sensor *sensor, bool enable)
{
 struct st_lsm6dsx_hw *hw = sensor->hw;
 int err;

 mutex_lock(&hw->conf_lock);

 if (hw->fifo_mode != ST_LSM6DSX_FIFO_BYPASS) {
  err = st_lsm6dsx_flush_fifo(hw);
  if (err < 0)
   goto out;
 }

 if (sensor->id == ST_LSM6DSX_ID_EXT0 ||
     sensor->id == ST_LSM6DSX_ID_EXT1 ||
     sensor->id == ST_LSM6DSX_ID_EXT2) {
  err = st_lsm6dsx_shub_set_enable(sensor, enable);
  if (err < 0)
   goto out;
 } else {
  err = st_lsm6dsx_sensor_set_enable(sensor, enable);
  if (err < 0)
   goto out;

  err = st_lsm6dsx_set_fifo_odr(sensor, enable);
  if (err < 0)
   goto out;
 }

 err = st_lsm6dsx_update_decimators(hw);
 if (err < 0)
  goto out;

 err = st_lsm6dsx_update_watermark(sensor, sensor->watermark);
 if (err < 0)
  goto out;

 if (hw->enable_mask) {

  err = st_lsm6dsx_reset_hw_ts(hw);
  if (err < 0)
   goto out;

  err = st_lsm6dsx_set_fifo_mode(hw, ST_LSM6DSX_FIFO_CONT);
 }

out:
 mutex_unlock(&hw->conf_lock);

 return err;
}
