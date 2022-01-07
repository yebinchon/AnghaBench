
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_MC_LS ;
 int AMD_CG_SUPPORT_MC_MGCG ;
 int MC_HUB_MISC_HUB_CG__ENABLE_MASK ;
 int MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK ;
 int RREG32 (int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmMC_HUB_MISC_HUB_CG ;

__attribute__((used)) static void gmc_v8_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;


 data = RREG32(mmMC_HUB_MISC_HUB_CG);
 if (data & MC_HUB_MISC_HUB_CG__ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_MC_MGCG;


 if (data & MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_MC_LS;
}
