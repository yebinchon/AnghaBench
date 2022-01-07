
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct st_lsm6dsx_sensor {int id; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_reg {int mask; int addr; } ;
struct st_lsm6dsx_hw {TYPE_2__* settings; int * iio_devs; } ;
struct TYPE_4__ {TYPE_1__* odr_table; } ;
struct TYPE_3__ {struct st_lsm6dsx_reg reg; } ;






 int ST_LSM6DSX_ID_MAX ;
 unsigned int ST_LSM6DSX_SHIFT_VAL (int ,int ) ;
 struct st_lsm6dsx_sensor* iio_priv (int ) ;
 int st_lsm6dsx_check_odr (struct st_lsm6dsx_sensor*,int ,int *) ;
 int st_lsm6dsx_check_odr_dependency (struct st_lsm6dsx_hw*,int ,int) ;
 int st_lsm6dsx_update_bits_locked (struct st_lsm6dsx_hw*,int ,int ,unsigned int) ;

__attribute__((used)) static int st_lsm6dsx_set_odr(struct st_lsm6dsx_sensor *sensor, u16 req_odr)
{
 struct st_lsm6dsx_sensor *ref_sensor = sensor;
 struct st_lsm6dsx_hw *hw = sensor->hw;
 const struct st_lsm6dsx_reg *reg;
 unsigned int data;
 u8 val = 0;
 int err;

 switch (sensor->id) {
 case 130:
 case 129:
 case 128:
 case 131: {
  u16 odr;
  int i;







  ref_sensor = iio_priv(hw->iio_devs[131]);
  for (i = 131; i < ST_LSM6DSX_ID_MAX; i++) {
   if (!hw->iio_devs[i] || i == sensor->id)
    continue;

   odr = st_lsm6dsx_check_odr_dependency(hw, req_odr, i);
   if (odr != req_odr)

    return 0;
  }
  break;
 }
 default:
  break;
 }

 if (req_odr > 0) {
  err = st_lsm6dsx_check_odr(ref_sensor, req_odr, &val);
  if (err < 0)
   return err;
 }

 reg = &hw->settings->odr_table[ref_sensor->id].reg;
 data = ST_LSM6DSX_SHIFT_VAL(val, reg->mask);
 return st_lsm6dsx_update_bits_locked(hw, reg->addr, reg->mask, data);
}
