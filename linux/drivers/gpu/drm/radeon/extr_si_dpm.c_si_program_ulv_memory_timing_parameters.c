
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct si_ulv_param {int volt_change_delay; int pl; } ;
struct si_power_info {int sram_end; scalar_t__ arb_table_start; struct si_ulv_param ulv; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ SMC_SIslands_MCArbDramTimingRegisterSet ;


 int SISLANDS_ULV_STATE_ARB_INDEX ;
 int SI_SMC_SOFT_REGISTER_ulv_volt_change_delay ;
 int SMC_SIslands_MCArbDramTimingRegisters ;
 int data ;
 scalar_t__ offsetof (int ,int ) ;
 int si_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_populate_memory_timing_parameters (struct radeon_device*,int *,TYPE_1__*) ;
 int si_write_smc_soft_register (struct radeon_device*,int ,int ) ;

__attribute__((used)) static int si_program_ulv_memory_timing_parameters(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 struct si_ulv_param *ulv = &si_pi->ulv;
 SMC_SIslands_MCArbDramTimingRegisterSet arb_regs = { 0 };
 int ret;

 ret = si_populate_memory_timing_parameters(rdev, &ulv->pl,
         &arb_regs);
 if (ret)
  return ret;

 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_ulv_volt_change_delay,
       ulv->volt_change_delay);

 ret = si_copy_bytes_to_smc(rdev,
       si_pi->arb_table_start +
       offsetof(SMC_SIslands_MCArbDramTimingRegisters, data) +
       sizeof(SMC_SIslands_MCArbDramTimingRegisterSet) * SISLANDS_ULV_STATE_ARB_INDEX,
       (u8 *)&arb_regs,
       sizeof(SMC_SIslands_MCArbDramTimingRegisterSet),
       si_pi->sram_end);

 return ret;
}
