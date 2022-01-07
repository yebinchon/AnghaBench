
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int ctrl_reg; } ;


 int TYPE_CTRL_FAN_TYPE_EN ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 TYPE_1__* type_params ;

__attribute__((used)) static void aspeed_set_tacho_type_enable(struct regmap *regmap, u8 type,
      bool enable)
{
 regmap_update_bits(regmap, type_params[type].ctrl_reg,
      TYPE_CTRL_FAN_TYPE_EN,
      enable ? TYPE_CTRL_FAN_TYPE_EN : 0);
}
