
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_kbc_pin_cfg {int type; int num; } ;
struct tegra_kbc {int dev; TYPE_1__* hw_support; struct tegra_kbc_pin_cfg* pin_cfg; } ;
struct TYPE_2__ {int max_columns; int max_rows; } ;


 int KBC_MAX_GPIO ;



 int dev_err (int ,char*,int,int ) ;

__attribute__((used)) static bool tegra_kbc_check_pin_cfg(const struct tegra_kbc *kbc,
     unsigned int *num_rows)
{
 int i;

 *num_rows = 0;

 for (i = 0; i < KBC_MAX_GPIO; i++) {
  const struct tegra_kbc_pin_cfg *pin_cfg = &kbc->pin_cfg[i];

  switch (pin_cfg->type) {
  case 128:
   if (pin_cfg->num >= kbc->hw_support->max_rows) {
    dev_err(kbc->dev,
     "pin_cfg[%d]: invalid row number %d\n",
     i, pin_cfg->num);
    return 0;
   }
   (*num_rows)++;
   break;

  case 130:
   if (pin_cfg->num >= kbc->hw_support->max_columns) {
    dev_err(kbc->dev,
     "pin_cfg[%d]: invalid column number %d\n",
     i, pin_cfg->num);
    return 0;
   }
   break;

  case 129:
   break;

  default:
   dev_err(kbc->dev,
    "pin_cfg[%d]: invalid entry type %d\n",
    pin_cfg->type, pin_cfg->num);
   return 0;
  }
 }

 return 1;
}
