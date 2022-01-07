
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lpf; } ;
struct inv_mpu6050_state {TYPE_1__ chip_config; } ;


 int ARRAY_SIZE (int const*) ;






 int inv_mpu6050_set_lpf_regs (struct inv_mpu6050_state*,int) ;

__attribute__((used)) static int inv_mpu6050_set_lpf(struct inv_mpu6050_state *st, int rate)
{
 static const int hz[] = {188, 98, 42, 20, 10, 5};
 static const int d[] = {
  132, 128,
  130, 131,
  133, 129
 };
 int i, h, result;
 u8 data;

 h = (rate >> 1);
 i = 0;
 while ((h < hz[i]) && (i < ARRAY_SIZE(d) - 1))
  i++;
 data = d[i];
 result = inv_mpu6050_set_lpf_regs(st, data);
 if (result)
  return result;
 st->chip_config.lpf = data;

 return 0;
}
