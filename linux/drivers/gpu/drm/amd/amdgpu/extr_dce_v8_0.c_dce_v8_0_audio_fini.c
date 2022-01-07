
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; int num_pins; int * pin; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;


 int amdgpu_audio ;
 int dce_v8_0_audio_enable (struct amdgpu_device*,int *,int) ;

__attribute__((used)) static void dce_v8_0_audio_fini(struct amdgpu_device *adev)
{
 int i;

 if (!amdgpu_audio)
  return;

 if (!adev->mode_info.audio.enabled)
  return;

 for (i = 0; i < adev->mode_info.audio.num_pins; i++)
  dce_v8_0_audio_enable(adev, &adev->mode_info.audio.pin[i], 0);

 adev->mode_info.audio.enabled = 0;
}
