
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inv_mpu6050_state {int powerup_count; int map; TYPE_1__* reg; } ;
struct TYPE_2__ {int pwr_mgmt_1; } ;


 int INV_MPU6050_BIT_SLEEP ;
 int INV_MPU6050_REG_UP_TIME_MAX ;
 int INV_MPU6050_REG_UP_TIME_MIN ;
 int dev_dbg (int ,char*,int,int) ;
 int regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int ,int ) ;

int inv_mpu6050_set_power_itg(struct inv_mpu6050_state *st, bool power_on)
{
 int result;

 if (power_on) {
  if (!st->powerup_count) {
   result = regmap_write(st->map, st->reg->pwr_mgmt_1, 0);
   if (result)
    return result;
   usleep_range(INV_MPU6050_REG_UP_TIME_MIN,
         INV_MPU6050_REG_UP_TIME_MAX);
  }
  st->powerup_count++;
 } else {
  if (st->powerup_count == 1) {
   result = regmap_write(st->map, st->reg->pwr_mgmt_1,
           INV_MPU6050_BIT_SLEEP);
   if (result)
    return result;
  }
  st->powerup_count--;
 }

 dev_dbg(regmap_get_device(st->map), "set power %d, count=%u\n",
  power_on, st->powerup_count);

 return 0;
}
