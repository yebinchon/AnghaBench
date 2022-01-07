
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int mask; scalar_t__ addr; } ;
struct TYPE_7__ {int mask; scalar_t__ addr; } ;
struct TYPE_6__ {int mask; scalar_t__ addr; } ;
struct st_lsm6dsx_hw_ts_settings {TYPE_4__ fifo_en; TYPE_3__ hr_timer; TYPE_2__ timer_en; } ;
struct st_lsm6dsx_hw {int regmap; TYPE_1__* settings; } ;
struct TYPE_5__ {struct st_lsm6dsx_hw_ts_settings ts_settings; } ;


 int ST_LSM6DSX_SHIFT_VAL (int,int ) ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;

__attribute__((used)) static int st_lsm6dsx_init_hw_timer(struct st_lsm6dsx_hw *hw)
{
 const struct st_lsm6dsx_hw_ts_settings *ts_settings;
 int err, val;

 ts_settings = &hw->settings->ts_settings;

 if (ts_settings->timer_en.addr) {
  val = ST_LSM6DSX_SHIFT_VAL(1, ts_settings->timer_en.mask);
  err = regmap_update_bits(hw->regmap,
      ts_settings->timer_en.addr,
      ts_settings->timer_en.mask, val);
  if (err < 0)
   return err;
 }


 if (ts_settings->hr_timer.addr) {
  val = ST_LSM6DSX_SHIFT_VAL(1, ts_settings->hr_timer.mask);
  err = regmap_update_bits(hw->regmap,
      ts_settings->hr_timer.addr,
      ts_settings->hr_timer.mask, val);
  if (err < 0)
   return err;
 }


 if (ts_settings->fifo_en.addr) {
  val = ST_LSM6DSX_SHIFT_VAL(1, ts_settings->fifo_en.mask);
  err = regmap_update_bits(hw->regmap,
      ts_settings->fifo_en.addr,
      ts_settings->fifo_en.mask, val);
  if (err < 0)
   return err;
 }
 return 0;
}
