
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_audio_component {TYPE_2__* audio_ops; } ;
struct TYPE_3__ {struct drm_audio_component* audio_component; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
struct TYPE_4__ {int audio_ptr; int (* pin_eld_notify ) (int ,int,int) ;} ;


 int DRM_DEBUG_KMS (char*,int) ;
 int stub1 (int ,int,int) ;

void amdgpu_dm_audio_eld_notify(struct amdgpu_device *adev, int pin)
{
 struct drm_audio_component *acomp = adev->dm.audio_component;

 if (acomp && acomp->audio_ops && acomp->audio_ops->pin_eld_notify) {
  DRM_DEBUG_KMS("Notify ELD: %d\n", pin);

  acomp->audio_ops->pin_eld_notify(acomp->audio_ops->audio_ptr,
       pin, -1);
 }
}
