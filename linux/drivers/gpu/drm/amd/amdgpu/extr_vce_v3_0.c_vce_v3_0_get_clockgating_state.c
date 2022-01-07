
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mutex; } ;
struct amdgpu_device {int flags; TYPE_1__ pm; } ;


 int AMD_CG_SUPPORT_VCE_MGCG ;
 int AMD_IS_APU ;
 int CURRENT_PG_STATUS__VCE_PG_STATUS_MASK ;
 int DRM_INFO (char*) ;
 int GRBM_GFX_INDEX ;
 int RREG32 (int ) ;
 int RREG32_SMC (int ) ;
 int VCE_INSTANCE ;
 int WREG32_FIELD (int ,int ,int ) ;
 int ixCURRENT_PG_STATUS ;
 int ixCURRENT_PG_STATUS_APU ;
 int mmVCE_CLOCK_GATING_A ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vce_v3_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 mutex_lock(&adev->pm.mutex);

 if (adev->flags & AMD_IS_APU)
  data = RREG32_SMC(ixCURRENT_PG_STATUS_APU);
 else
  data = RREG32_SMC(ixCURRENT_PG_STATUS);

 if (data & CURRENT_PG_STATUS__VCE_PG_STATUS_MASK) {
  DRM_INFO("Cannot get clockgating state when VCE is powergated.\n");
  goto out;
 }

 WREG32_FIELD(GRBM_GFX_INDEX, VCE_INSTANCE, 0);


 data = RREG32(mmVCE_CLOCK_GATING_A);
 if (data & (0x04 << 4))
  *flags |= AMD_CG_SUPPORT_VCE_MGCG;

out:
 mutex_unlock(&adev->pm.mutex);
}
