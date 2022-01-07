
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dc_lock; int audio_lock; int * freesync_module; int * cgs_device; scalar_t__ dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;


 int amdgpu_cgs_destroy_device (int *) ;
 int amdgpu_dm_audio_fini (struct amdgpu_device*) ;
 int amdgpu_dm_destroy_drm_device (TYPE_1__*) ;
 int dc_destroy (scalar_t__*) ;
 int mod_freesync_destroy (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void amdgpu_dm_fini(struct amdgpu_device *adev)
{
 amdgpu_dm_audio_fini(adev);

 amdgpu_dm_destroy_drm_device(&adev->dm);


 if (adev->dm.dc)
  dc_destroy(&adev->dm.dc);






 if (adev->dm.cgs_device) {
  amdgpu_cgs_destroy_device(adev->dm.cgs_device);
  adev->dm.cgs_device = ((void*)0);
 }
 if (adev->dm.freesync_module) {
  mod_freesync_destroy(adev->dm.freesync_module);
  adev->dm.freesync_module = ((void*)0);
 }

 mutex_destroy(&adev->dm.audio_lock);
 mutex_destroy(&adev->dm.dc_lock);

 return;
}
