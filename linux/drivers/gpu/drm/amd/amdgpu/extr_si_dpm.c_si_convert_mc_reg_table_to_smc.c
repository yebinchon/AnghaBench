
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct si_ps {int performance_level_count; int * performance_levels; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ SMC_SIslands_MCRegisters ;


 int SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT ;
 int si_convert_mc_reg_table_entry_to_smc (struct amdgpu_device*,int *,int *) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static void si_convert_mc_reg_table_to_smc(struct amdgpu_device *adev,
        struct amdgpu_ps *amdgpu_state,
        SMC_SIslands_MCRegisters *mc_reg_table)
{
 struct si_ps *state = si_get_ps(amdgpu_state);
 int i;

 for (i = 0; i < state->performance_level_count; i++) {
  si_convert_mc_reg_table_entry_to_smc(adev,
           &state->performance_levels[i],
           &mc_reg_table->data[SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT + i]);
 }
}
