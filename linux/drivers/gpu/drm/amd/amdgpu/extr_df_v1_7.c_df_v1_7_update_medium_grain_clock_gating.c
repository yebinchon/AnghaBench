
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {int cg_flags; TYPE_1__* df_funcs; } ;
struct TYPE_2__ {int (* enable_broadcast_mode ) (struct amdgpu_device*,int) ;} ;


 int AMD_CG_SUPPORT_DF_MGCG ;
 int DF ;
 int DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK ;
 int DF_V1_7_MGCG_DISABLE ;
 int DF_V1_7_MGCG_ENABLE_15_CYCLE_DELAY ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmDF_PIE_AON0_DfGlobalClkGater ;
 int stub1 (struct amdgpu_device*,int) ;
 int stub2 (struct amdgpu_device*,int) ;

__attribute__((used)) static void df_v1_7_update_medium_grain_clock_gating(struct amdgpu_device *adev,
           bool enable)
{
 u32 tmp;


 adev->df_funcs->enable_broadcast_mode(adev, 1);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_DF_MGCG)) {
  tmp = RREG32_SOC15(DF, 0, mmDF_PIE_AON0_DfGlobalClkGater);
  tmp &= ~DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK;
  tmp |= DF_V1_7_MGCG_ENABLE_15_CYCLE_DELAY;
  WREG32_SOC15(DF, 0, mmDF_PIE_AON0_DfGlobalClkGater, tmp);
 } else {
  tmp = RREG32_SOC15(DF, 0, mmDF_PIE_AON0_DfGlobalClkGater);
  tmp &= ~DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK;
  tmp |= DF_V1_7_MGCG_DISABLE;
  WREG32_SOC15(DF, 0, mmDF_PIE_AON0_DfGlobalClkGater, tmp);
 }


 adev->df_funcs->enable_broadcast_mode(adev, 0);
}
