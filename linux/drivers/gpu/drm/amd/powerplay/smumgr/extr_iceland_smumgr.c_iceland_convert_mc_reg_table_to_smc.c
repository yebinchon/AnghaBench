
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_8__ {TYPE_2__ mclk_table; } ;
struct smu7_hwmgr {TYPE_3__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_9__ {int * data; } ;
struct TYPE_6__ {int value; } ;
typedef TYPE_4__ SMU71_Discrete_MCRegisters ;


 int iceland_convert_mc_reg_table_entry_to_smc (struct pp_hwmgr*,int ,int *) ;

__attribute__((used)) static int iceland_convert_mc_reg_table_to_smc(struct pp_hwmgr *hwmgr,
  SMU71_Discrete_MCRegisters *mc_regs)
{
 int result = 0;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 int res;
 uint32_t i;

 for (i = 0; i < data->dpm_table.mclk_table.count; i++) {
  res = iceland_convert_mc_reg_table_entry_to_smc(
    hwmgr,
    data->dpm_table.mclk_table.dpm_levels[i].value,
    &mc_regs->data[i]
    );

  if (0 != res)
   result = res;
 }

 return result;
}
