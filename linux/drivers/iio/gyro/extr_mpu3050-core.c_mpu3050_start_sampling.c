
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int fullscale; int lpf; int divisor; int map; int * calibration; } ;
typedef int raw_val ;
typedef int __be16 ;


 int MPU3050_DLPF_CFG_SHIFT ;
 int MPU3050_DLPF_FS_SYNC ;
 int MPU3050_EXT_SYNC_NONE ;
 int MPU3050_EXT_SYNC_SHIFT ;
 int MPU3050_FS_SHIFT ;
 int MPU3050_PWR_MGM ;
 int MPU3050_PWR_MGM_CLKSEL_MASK ;
 int MPU3050_PWR_MGM_PLL_Z ;
 int MPU3050_PWR_MGM_RESET ;
 int MPU3050_SMPLRT_DIV ;
 int MPU3050_X_OFFS_USR_H ;
 int cpu_to_be16 (int ) ;
 int mpu3050_get_freq (struct mpu3050*) ;
 int msleep (int) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mpu3050_start_sampling(struct mpu3050 *mpu3050)
{
 __be16 raw_val[3];
 int ret;
 int i;


 ret = regmap_update_bits(mpu3050->map, MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_RESET, MPU3050_PWR_MGM_RESET);
 if (ret)
  return ret;


 ret = regmap_update_bits(mpu3050->map, MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_CLKSEL_MASK,
     MPU3050_PWR_MGM_PLL_Z);
 if (ret)
  return ret;


 for (i = 0; i < 3; i++)
  raw_val[i] = cpu_to_be16(mpu3050->calibration[i]);

 ret = regmap_bulk_write(mpu3050->map, MPU3050_X_OFFS_USR_H, raw_val,
    sizeof(raw_val));
 if (ret)
  return ret;


 ret = regmap_write(mpu3050->map, MPU3050_DLPF_FS_SYNC,
      MPU3050_EXT_SYNC_NONE << MPU3050_EXT_SYNC_SHIFT |
      mpu3050->fullscale << MPU3050_FS_SHIFT |
      mpu3050->lpf << MPU3050_DLPF_CFG_SHIFT);
 if (ret)
  return ret;


 ret = regmap_write(mpu3050->map, MPU3050_SMPLRT_DIV, mpu3050->divisor);
 if (ret)
  return ret;






 msleep(50 + 1000 / mpu3050_get_freq(mpu3050));

 return 0;
}
