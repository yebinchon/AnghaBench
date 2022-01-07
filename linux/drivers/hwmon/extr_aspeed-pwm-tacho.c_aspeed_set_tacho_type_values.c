
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int ctrl_reg1; int ctrl_reg; } ;


 int TYPE_CTRL_FAN1_MASK ;
 size_t TYPE_CTRL_FAN_DIVISION ;
 int TYPE_CTRL_FAN_MASK ;
 size_t TYPE_CTRL_FAN_MODE ;
 size_t TYPE_CTRL_FAN_PERIOD ;
 int regmap_update_bits (struct regmap*,int ,int ,size_t) ;
 TYPE_1__* type_params ;

__attribute__((used)) static void aspeed_set_tacho_type_values(struct regmap *regmap, u8 type,
      u8 mode, u16 unit, u8 division)
{
 u32 reg_value = ((mode << TYPE_CTRL_FAN_MODE) |
    (unit << TYPE_CTRL_FAN_PERIOD) |
    (division << TYPE_CTRL_FAN_DIVISION));

 regmap_update_bits(regmap, type_params[type].ctrl_reg,
      TYPE_CTRL_FAN_MASK, reg_value);
 regmap_update_bits(regmap, type_params[type].ctrl_reg1,
      TYPE_CTRL_FAN1_MASK, unit << 16);
}
