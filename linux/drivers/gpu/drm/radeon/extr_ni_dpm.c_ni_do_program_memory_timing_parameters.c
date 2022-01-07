
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rv7xx_power_info {int sram_end; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; int * performance_levels; } ;
struct ni_power_info {scalar_t__ arb_table_start; } ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ SMC_NIslands_MCArbDramTimingRegisterSet ;


 int SMC_NIslands_MCArbDramTimingRegisters ;
 int data ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 int ni_populate_memory_timing_parameters (struct radeon_device*,int *,TYPE_1__*) ;
 scalar_t__ offsetof (int ,int ) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int ,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ni_do_program_memory_timing_parameters(struct radeon_device *rdev,
        struct radeon_ps *radeon_state,
        unsigned int first_arb_set)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 struct ni_ps *state = ni_get_ps(radeon_state);
 SMC_NIslands_MCArbDramTimingRegisterSet arb_regs = { 0 };
 int i, ret = 0;

 for (i = 0; i < state->performance_level_count; i++) {
  ret = ni_populate_memory_timing_parameters(rdev, &state->performance_levels[i], &arb_regs);
  if (ret)
   break;

  ret = rv770_copy_bytes_to_smc(rdev,
           (u16)(ni_pi->arb_table_start +
          offsetof(SMC_NIslands_MCArbDramTimingRegisters, data) +
          sizeof(SMC_NIslands_MCArbDramTimingRegisterSet) * (first_arb_set + i)),
           (u8 *)&arb_regs,
           (u16)sizeof(SMC_NIslands_MCArbDramTimingRegisterSet),
           pi->sram_end);
  if (ret)
   break;
 }
 return ret;
}
