
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int accl_fs; } ;
struct inv_mpu6050_state {TYPE_2__ chip_config; TYPE_1__* reg; int map; } ;
struct TYPE_3__ {int accl_config; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int INV_MPU6050_ACCL_CONFIG_FSR_SHIFT ;
 int* accel_scale ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int inv_mpu6050_write_accel_scale(struct inv_mpu6050_state *st, int val)
{
 int result, i;
 u8 d;

 for (i = 0; i < ARRAY_SIZE(accel_scale); ++i) {
  if (accel_scale[i] == val) {
   d = (i << INV_MPU6050_ACCL_CONFIG_FSR_SHIFT);
   result = regmap_write(st->map, st->reg->accl_config, d);
   if (result)
    return result;

   st->chip_config.accl_fs = i;
   return 0;
  }
 }

 return -EINVAL;
}
