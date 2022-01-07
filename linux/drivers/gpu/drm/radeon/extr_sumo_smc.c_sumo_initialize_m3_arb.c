
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * csr_m3_arb_cntl_fs3d; int * csr_m3_arb_cntl_uvd; int * csr_m3_arb_cntl_default; } ;
struct sumo_power_info {TYPE_1__ sys_info; int enable_dynamic_m3_arbiter; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ MCU_M3ARB_PARAMS ;
 int NUMBER_OF_M3ARB_PARAM_SETS ;
 int WREG32_RCU (scalar_t__,int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

void sumo_initialize_m3_arb(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 u32 i;

 if (!pi->enable_dynamic_m3_arbiter)
  return;

 for (i = 0; i < NUMBER_OF_M3ARB_PARAM_SETS; i++)
  WREG32_RCU(MCU_M3ARB_PARAMS + (i * 4),
      pi->sys_info.csr_m3_arb_cntl_default[i]);

 for (; i < NUMBER_OF_M3ARB_PARAM_SETS * 2; i++)
  WREG32_RCU(MCU_M3ARB_PARAMS + (i * 4),
      pi->sys_info.csr_m3_arb_cntl_uvd[i % NUMBER_OF_M3ARB_PARAM_SETS]);

 for (; i < NUMBER_OF_M3ARB_PARAM_SETS * 3; i++)
  WREG32_RCU(MCU_M3ARB_PARAMS + (i * 4),
      pi->sys_info.csr_m3_arb_cntl_fs3d[i % NUMBER_OF_M3ARB_PARAM_SETS]);
}
