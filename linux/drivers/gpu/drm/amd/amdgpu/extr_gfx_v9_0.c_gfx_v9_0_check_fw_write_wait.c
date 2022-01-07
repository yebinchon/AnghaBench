
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int me_fw_write_wait; int mec_fw_write_wait; int mec_fw_version; int mec_feature_version; int pfp_fw_version; int pfp_feature_version; int me_fw_version; int me_feature_version; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; } ;






 int DRM_WARN_ONCE (char*) ;

__attribute__((used)) static void gfx_v9_0_check_fw_write_wait(struct amdgpu_device *adev)
{
 adev->gfx.me_fw_write_wait = 0;
 adev->gfx.mec_fw_write_wait = 0;

 if ((adev->gfx.mec_fw_version < 0x000001a5) ||
     (adev->gfx.mec_feature_version < 46) ||
     (adev->gfx.pfp_fw_version < 0x000000b7) ||
     (adev->gfx.pfp_feature_version < 46))
  DRM_WARN_ONCE("Warning: check cp_fw_version and update it to realize 			      GRBM requires 1-cycle delay in cp firmware\n");


 switch (adev->asic_type) {
 case 130:
  if ((adev->gfx.me_fw_version >= 0x0000009c) &&
      (adev->gfx.me_feature_version >= 42) &&
      (adev->gfx.pfp_fw_version >= 0x000000b1) &&
      (adev->gfx.pfp_feature_version >= 42))
   adev->gfx.me_fw_write_wait = 1;

  if ((adev->gfx.mec_fw_version >= 0x00000193) &&
      (adev->gfx.mec_feature_version >= 42))
   adev->gfx.mec_fw_write_wait = 1;
  break;
 case 129:
  if ((adev->gfx.me_fw_version >= 0x0000009c) &&
      (adev->gfx.me_feature_version >= 44) &&
      (adev->gfx.pfp_fw_version >= 0x000000b2) &&
      (adev->gfx.pfp_feature_version >= 44))
   adev->gfx.me_fw_write_wait = 1;

  if ((adev->gfx.mec_fw_version >= 0x00000196) &&
      (adev->gfx.mec_feature_version >= 44))
   adev->gfx.mec_fw_write_wait = 1;
  break;
 case 128:
  if ((adev->gfx.me_fw_version >= 0x0000009c) &&
      (adev->gfx.me_feature_version >= 44) &&
      (adev->gfx.pfp_fw_version >= 0x000000b2) &&
      (adev->gfx.pfp_feature_version >= 44))
   adev->gfx.me_fw_write_wait = 1;

  if ((adev->gfx.mec_fw_version >= 0x00000197) &&
      (adev->gfx.mec_feature_version >= 44))
   adev->gfx.mec_fw_write_wait = 1;
  break;
 case 131:
  if ((adev->gfx.me_fw_version >= 0x0000009c) &&
      (adev->gfx.me_feature_version >= 42) &&
      (adev->gfx.pfp_fw_version >= 0x000000b1) &&
      (adev->gfx.pfp_feature_version >= 42))
   adev->gfx.me_fw_write_wait = 1;

  if ((adev->gfx.mec_fw_version >= 0x00000192) &&
      (adev->gfx.mec_feature_version >= 42))
   adev->gfx.mec_fw_write_wait = 1;
  break;
 default:
  break;
 }
}
