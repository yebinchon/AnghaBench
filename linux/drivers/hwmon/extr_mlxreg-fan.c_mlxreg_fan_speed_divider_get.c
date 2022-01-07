
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxreg_fan {int divider; int dev; int regmap; } ;
struct mlxreg_core_data {int capability; } ;


 int MLXREG_FAN_TACHO_DIV_MIN ;
 int MLXREG_FAN_TACHO_DIV_SCALE_MAX ;
 int dev_err (int ,char*,int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mlxreg_fan_speed_divider_get(struct mlxreg_fan *fan,
     struct mlxreg_core_data *data)
{
 u32 regval;
 int err;

 err = regmap_read(fan->regmap, data->capability, &regval);
 if (err) {
  dev_err(fan->dev, "Failed to query capability register 0x%08x\n",
   data->capability);
  return err;
 }







 if (regval > 0 && regval <= MLXREG_FAN_TACHO_DIV_SCALE_MAX)
  fan->divider = regval * MLXREG_FAN_TACHO_DIV_MIN;

 return 0;
}
