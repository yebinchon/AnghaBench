
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibra_info {int enabled; int supplies; struct twl6040* twl6040; } ;
struct twl6040 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int TWL6040_REG_VIBCTLL ;
 int TWL6040_REG_VIBCTLR ;
 int regulator_bulk_disable (int ,int ) ;
 int twl6040_power (struct twl6040*,int ) ;
 int twl6040_reg_write (struct twl6040*,int ,int) ;

__attribute__((used)) static void twl6040_vibra_disable(struct vibra_info *info)
{
 struct twl6040 *twl6040 = info->twl6040;

 twl6040_reg_write(twl6040, TWL6040_REG_VIBCTLL, 0x00);
 twl6040_reg_write(twl6040, TWL6040_REG_VIBCTLR, 0x00);
 twl6040_power(info->twl6040, 0);

 regulator_bulk_disable(ARRAY_SIZE(info->supplies), info->supplies);

 info->enabled = 0;
}
