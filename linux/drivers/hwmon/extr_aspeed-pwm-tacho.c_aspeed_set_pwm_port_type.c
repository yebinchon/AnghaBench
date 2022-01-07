
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int type_part1; int type_part2; int type_mask; int ctrl_reg; } ;


 TYPE_1__* pwm_port_params ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static void aspeed_set_pwm_port_type(struct regmap *regmap,
         u8 pwm_port, u8 type)
{
 u32 reg_value = (type & 0x1) << pwm_port_params[pwm_port].type_part1;

 reg_value |= (type & 0x2) << pwm_port_params[pwm_port].type_part2;

 regmap_update_bits(regmap, pwm_port_params[pwm_port].ctrl_reg,
      pwm_port_params[pwm_port].type_mask, reg_value);
}
