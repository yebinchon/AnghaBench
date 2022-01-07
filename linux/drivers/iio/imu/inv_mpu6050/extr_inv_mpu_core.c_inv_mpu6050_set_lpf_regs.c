
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inv_mpu6050_state {int chip_type; TYPE_1__* reg; int map; } ;
typedef enum inv_mpu6050_filter_e { ____Placeholder_inv_mpu6050_filter_e } inv_mpu6050_filter_e ;
struct TYPE_2__ {int accel_lpf; int lpf; } ;





 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int inv_mpu6050_set_lpf_regs(struct inv_mpu6050_state *st,
        enum inv_mpu6050_filter_e val)
{
 int result;

 result = regmap_write(st->map, st->reg->lpf, val);
 if (result)
  return result;

 switch (st->chip_type) {
 case 129:
 case 130:
 case 128:

  result = 0;
  break;
 default:

  result = regmap_write(st->map, st->reg->accel_lpf, val);
  break;
 }

 return result;
}
