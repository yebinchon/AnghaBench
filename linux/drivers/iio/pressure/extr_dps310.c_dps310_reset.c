
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int regmap; } ;


 int DPS310_RESET ;
 int DPS310_RESET_MAGIC ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void dps310_reset(void *action_data)
{
 struct dps310_data *data = action_data;

 regmap_write(data->regmap, DPS310_RESET, DPS310_RESET_MAGIC);
}
