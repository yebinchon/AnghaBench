
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_3__ {size_t num_entries; int validflag; int last; TYPE_2__* mc_reg_table_entry; } ;
struct iceland_smumgr {TYPE_1__ mc_reg_table; } ;
struct TYPE_4__ {size_t const mclk_max; } ;
typedef int SMU71_Discrete_MCRegisterSet ;


 int iceland_convert_mc_registers (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static int iceland_convert_mc_reg_table_entry_to_smc(struct pp_hwmgr *hwmgr,
  const uint32_t memory_clock,
  SMU71_Discrete_MCRegisterSet *mc_reg_table_data
  )
{
 struct iceland_smumgr *smu_data = (struct iceland_smumgr *)(hwmgr->smu_backend);
 uint32_t i = 0;

 for (i = 0; i < smu_data->mc_reg_table.num_entries; i++) {
  if (memory_clock <=
   smu_data->mc_reg_table.mc_reg_table_entry[i].mclk_max) {
   break;
  }
 }

 if ((i == smu_data->mc_reg_table.num_entries) && (i > 0))
  --i;

 iceland_convert_mc_registers(&smu_data->mc_reg_table.mc_reg_table_entry[i],
    mc_reg_table_data, smu_data->mc_reg_table.last,
    smu_data->mc_reg_table.validflag);

 return 0;
}
