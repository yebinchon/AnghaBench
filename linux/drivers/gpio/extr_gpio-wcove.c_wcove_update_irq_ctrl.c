
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int intcnt; int regmap; } ;


 int CTLI_INTCNT_BE ;
 int CTRL_IN ;
 int regmap_update_bits (int ,int,int ,int ) ;
 int to_reg (int,int ) ;

__attribute__((used)) static void wcove_update_irq_ctrl(struct wcove_gpio *wg, int gpio)
{
 int reg = to_reg(gpio, CTRL_IN);

 if (reg < 0)
  return;

 regmap_update_bits(wg->regmap, reg, CTLI_INTCNT_BE, wg->intcnt);
}
