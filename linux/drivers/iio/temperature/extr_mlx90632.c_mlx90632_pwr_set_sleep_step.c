
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
typedef int s32 ;


 int MLX90632_CFG_PWR_MASK ;
 int MLX90632_PWR_STATUS_SLEEP_STEP ;
 int MLX90632_REG_CONTROL ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static s32 mlx90632_pwr_set_sleep_step(struct regmap *regmap)
{
 return regmap_update_bits(regmap, MLX90632_REG_CONTROL,
      MLX90632_CFG_PWR_MASK,
      MLX90632_PWR_STATUS_SLEEP_STEP);
}
