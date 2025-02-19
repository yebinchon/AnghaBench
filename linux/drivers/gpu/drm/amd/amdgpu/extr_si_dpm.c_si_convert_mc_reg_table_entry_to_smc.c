
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t num_entries; int valid_flag; int last; TYPE_2__* mc_reg_table_entry; } ;
struct si_power_info {TYPE_1__ mc_reg_table; } ;
struct rv7xx_pl {scalar_t__ mclk; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ mclk_max; } ;
typedef int SMC_SIslands_MCRegisterSet ;


 int si_convert_mc_registers (TYPE_2__*,int *,int ,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void si_convert_mc_reg_table_entry_to_smc(struct amdgpu_device *adev,
       struct rv7xx_pl *pl,
       SMC_SIslands_MCRegisterSet *mc_reg_table_data)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 u32 i = 0;

 for (i = 0; i < si_pi->mc_reg_table.num_entries; i++) {
  if (pl->mclk <= si_pi->mc_reg_table.mc_reg_table_entry[i].mclk_max)
   break;
 }

 if ((i == si_pi->mc_reg_table.num_entries) && (i > 0))
  --i;

 si_convert_mc_registers(&si_pi->mc_reg_table.mc_reg_table_entry[i],
    mc_reg_table_data, si_pi->mc_reg_table.last,
    si_pi->mc_reg_table.valid_flag);
}
