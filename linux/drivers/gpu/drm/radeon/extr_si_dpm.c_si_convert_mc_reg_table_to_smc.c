
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; int * performance_levels; } ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ SMC_SIslands_MCRegisters ;


 int SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 int si_convert_mc_reg_table_entry_to_smc (struct radeon_device*,int *,int *) ;

__attribute__((used)) static void si_convert_mc_reg_table_to_smc(struct radeon_device *rdev,
        struct radeon_ps *radeon_state,
        SMC_SIslands_MCRegisters *mc_reg_table)
{
 struct ni_ps *state = ni_get_ps(radeon_state);
 int i;

 for (i = 0; i < state->performance_level_count; i++) {
  si_convert_mc_reg_table_entry_to_smc(rdev,
           &state->performance_levels[i],
           &mc_reg_table->data[SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT + i]);
 }
}
