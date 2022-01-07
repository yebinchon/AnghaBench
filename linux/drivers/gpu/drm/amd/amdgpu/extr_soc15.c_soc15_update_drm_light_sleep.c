
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_DRM_LS ;
 int MP0 ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int) ;
 int mmMP0_MISC_LIGHT_SLEEP_CTRL ;

__attribute__((used)) static void soc15_update_drm_light_sleep(struct amdgpu_device *adev, bool enable)
{
 uint32_t def, data;

 def = data = RREG32(SOC15_REG_OFFSET(MP0, 0, mmMP0_MISC_LIGHT_SLEEP_CTRL));

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_DRM_LS))
  data |= 1;
 else
  data &= ~1;

 if (def != data)
  WREG32(SOC15_REG_OFFSET(MP0, 0, mmMP0_MISC_LIGHT_SLEEP_CTRL), data);
}
