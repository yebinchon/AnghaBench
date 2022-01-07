
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_DF_MGCG ;
 int DF ;
 int DF_V3_6_MGCG_ENABLE_15_CYCLE_DELAY ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmDF_PIE_AON0_DfGlobalClkGater ;

__attribute__((used)) static void df_v3_6_get_clockgating_state(struct amdgpu_device *adev,
       u32 *flags)
{
 u32 tmp;


 tmp = RREG32_SOC15(DF, 0, mmDF_PIE_AON0_DfGlobalClkGater);
 if (tmp & DF_V3_6_MGCG_ENABLE_15_CYCLE_DELAY)
  *flags |= AMD_CG_SUPPORT_DF_MGCG;
}
