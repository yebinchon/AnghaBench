
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crystalcove_gpio {int intcnt_value; int regmap; } ;


 int CTLI_INTCNT_BE ;
 int CTRL_IN ;
 int regmap_update_bits (int ,int,int ,int ) ;
 int to_reg (int,int ) ;

__attribute__((used)) static void crystalcove_update_irq_ctrl(struct crystalcove_gpio *cg, int gpio)
{
 int reg = to_reg(gpio, CTRL_IN);

 regmap_update_bits(cg->regmap, reg, CTLI_INTCNT_BE, cg->intcnt_value);
}
