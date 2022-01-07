
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mask; int addr; } ;
struct st_lsm6dsx_shub_settings {TYPE_2__ master_en; } ;
struct st_lsm6dsx_sensor {struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {int page_lock; int regmap; TYPE_1__* settings; } ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;


 unsigned int ST_LSM6DSX_SHIFT_VAL (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int st_lsm6dsx_sensor_set_enable (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_set_page (struct st_lsm6dsx_hw*,int) ;

__attribute__((used)) static int st_lsm6dsx_shub_master_enable(struct st_lsm6dsx_sensor *sensor,
      bool enable)
{
 const struct st_lsm6dsx_shub_settings *hub_settings;
 struct st_lsm6dsx_hw *hw = sensor->hw;
 unsigned int data;
 int err;


 err = st_lsm6dsx_sensor_set_enable(sensor, enable);
 if (err < 0)
  return err;

 mutex_lock(&hw->page_lock);

 hub_settings = &hw->settings->shub_settings;
 err = st_lsm6dsx_set_page(hw, 1);
 if (err < 0)
  goto out;

 data = ST_LSM6DSX_SHIFT_VAL(enable, hub_settings->master_en.mask);
 err = regmap_update_bits(hw->regmap, hub_settings->master_en.addr,
     hub_settings->master_en.mask, data);

 st_lsm6dsx_set_page(hw, 0);
out:
 mutex_unlock(&hw->page_lock);

 return err;
}
