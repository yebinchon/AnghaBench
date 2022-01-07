
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cp_fw_write_wait; int me_fw_version; int me_feature_version; int pfp_fw_version; int pfp_feature_version; int mec_fw_version; int mec_feature_version; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; } ;





 int DRM_WARN_ONCE (char*) ;

__attribute__((used)) static void gfx_v10_0_check_fw_write_wait(struct amdgpu_device *adev)
{
 adev->gfx.cp_fw_write_wait = 0;

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
  if ((adev->gfx.me_fw_version >= 0x00000046) &&
      (adev->gfx.me_feature_version >= 27) &&
      (adev->gfx.pfp_fw_version >= 0x00000068) &&
      (adev->gfx.pfp_feature_version >= 27) &&
      (adev->gfx.mec_fw_version >= 0x0000005b) &&
      (adev->gfx.mec_feature_version >= 27))
   adev->gfx.cp_fw_write_wait = 1;
  break;
 default:
  break;
 }

 if (adev->gfx.cp_fw_write_wait == 0)
  DRM_WARN_ONCE("Warning: check cp_fw_version and update it to realize 			      GRBM requires 1-cycle delay in cp firmware\n");

}
