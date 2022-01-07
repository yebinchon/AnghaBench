
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_LS ;
 int MMHUB ;
 int MM_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMM_ATC_L2_MISC_CG ;

__attribute__((used)) static void mmhub_v2_0_update_medium_grain_light_sleep(struct amdgpu_device *adev,
             bool enable)
{
 uint32_t def, data;

 def = data = RREG32_SOC15(MMHUB, 0, mmMM_ATC_L2_MISC_CG);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_LS))
  data |= MM_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK;
 else
  data &= ~MM_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK;

 if (def != data)
  WREG32_SOC15(MMHUB, 0, mmMM_ATC_L2_MISC_CG, data);
}
