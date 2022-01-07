
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode_config_initialized; int bios_hardcoded_edid; } ;
struct amdgpu_device {TYPE_1__ mode_info; int ddev; } ;


 int dce_v8_0_afmt_fini (struct amdgpu_device*) ;
 int dce_v8_0_audio_fini (struct amdgpu_device*) ;
 int drm_kms_helper_poll_fini (int ) ;
 int drm_mode_config_cleanup (int ) ;
 int kfree (int ) ;

__attribute__((used)) static int dce_v8_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 kfree(adev->mode_info.bios_hardcoded_edid);

 drm_kms_helper_poll_fini(adev->ddev);

 dce_v8_0_audio_fini(adev);

 dce_v8_0_afmt_fini(adev);

 drm_mode_config_cleanup(adev->ddev);
 adev->mode_info.mode_config_initialized = 0;

 return 0;
}
