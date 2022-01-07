
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct inv_mpu6050_state {TYPE_1__* reg; int map; } ;
struct TYPE_2__ {int pwr_mgmt_1; int pwr_mgmt_2; } ;


 unsigned int INV_CLK_INTERNAL ;
 unsigned int INV_CLK_PLL ;
 unsigned int INV_MPU6050_BIT_CLK_MASK ;
 unsigned int INV_MPU6050_BIT_PWR_GYRO_STBY ;
 int INV_MPU6050_TEMP_UP_TIME ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

int inv_mpu6050_switch_engine(struct inv_mpu6050_state *st, bool en, u32 mask)
{
 unsigned int d, mgmt_1;
 int result;





 if (mask == INV_MPU6050_BIT_PWR_GYRO_STBY) {
  result = regmap_read(st->map, st->reg->pwr_mgmt_1, &mgmt_1);
  if (result)
   return result;

  mgmt_1 &= ~INV_MPU6050_BIT_CLK_MASK;
 }

 if ((mask == INV_MPU6050_BIT_PWR_GYRO_STBY) && (!en)) {




  mgmt_1 |= INV_CLK_INTERNAL;
  result = regmap_write(st->map, st->reg->pwr_mgmt_1, mgmt_1);
  if (result)
   return result;
 }

 result = regmap_read(st->map, st->reg->pwr_mgmt_2, &d);
 if (result)
  return result;
 if (en)
  d &= ~mask;
 else
  d |= mask;
 result = regmap_write(st->map, st->reg->pwr_mgmt_2, d);
 if (result)
  return result;

 if (en) {

  msleep(INV_MPU6050_TEMP_UP_TIME);
  if (mask == INV_MPU6050_BIT_PWR_GYRO_STBY) {

   mgmt_1 |= INV_CLK_PLL;
   result = regmap_write(st->map,
           st->reg->pwr_mgmt_1, mgmt_1);
   if (result)
    return result;
  }
 }

 return 0;
}
