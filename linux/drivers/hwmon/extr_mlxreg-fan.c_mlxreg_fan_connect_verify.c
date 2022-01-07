
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxreg_fan {int dev; int regmap; } ;
struct mlxreg_core_data {int bit; int capability; } ;


 int dev_err (int ,char*,int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mlxreg_fan_connect_verify(struct mlxreg_fan *fan,
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

 return !!(regval & data->bit);
}
