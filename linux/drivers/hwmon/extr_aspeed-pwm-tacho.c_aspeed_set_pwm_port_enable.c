
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int pwm_en; int ctrl_reg; } ;


 TYPE_1__* pwm_port_params ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void aspeed_set_pwm_port_enable(struct regmap *regmap, u8 pwm_port,
           bool enable)
{
 regmap_update_bits(regmap, pwm_port_params[pwm_port].ctrl_reg,
      pwm_port_params[pwm_port].pwm_en,
      enable ? pwm_port_params[pwm_port].pwm_en : 0);
}
