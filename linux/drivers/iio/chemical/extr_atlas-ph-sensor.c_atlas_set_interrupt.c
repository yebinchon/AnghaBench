
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atlas_data {int regmap; } ;


 int ATLAS_REG_INT_CONTROL ;
 int ATLAS_REG_INT_CONTROL_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int atlas_set_interrupt(struct atlas_data *data, bool state)
{
 return regmap_update_bits(data->regmap, ATLAS_REG_INT_CONTROL,
      ATLAS_REG_INT_CONTROL_EN,
      state ? ATLAS_REG_INT_CONTROL_EN : 0);
}
