
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enabled; } ;
struct TYPE_6__ {TYPE_2__ audio; } ;
struct TYPE_4__ {int audio_registered; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_1__ dm; int dev; } ;


 int amdgpu_audio ;
 int amdgpu_dm_audio_component_bind_ops ;
 int component_del (int ,int *) ;

__attribute__((used)) static void amdgpu_dm_audio_fini(struct amdgpu_device *adev)
{
 if (!amdgpu_audio)
  return;

 if (!adev->mode_info.audio.enabled)
  return;

 if (adev->dm.audio_registered) {
  component_del(adev->dev, &amdgpu_dm_audio_component_bind_ops);
  adev->dm.audio_registered = 0;
 }



 adev->mode_info.audio.enabled = 0;
}
