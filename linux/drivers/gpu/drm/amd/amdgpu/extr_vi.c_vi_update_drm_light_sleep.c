
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_DRM_LS ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;

__attribute__((used)) static void vi_update_drm_light_sleep(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t temp, data;

 temp = data = RREG32(0x157a);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_DRM_LS))
  data |= 1;
 else
  data &= ~1;

 if (temp != data)
  WREG32(0x157a, data);
}
