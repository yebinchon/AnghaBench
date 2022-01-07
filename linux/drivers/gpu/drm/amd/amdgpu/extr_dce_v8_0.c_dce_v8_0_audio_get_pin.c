
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_pins; struct amdgpu_audio_pin* pin; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct amdgpu_audio_pin {scalar_t__ connected; } ;


 int DRM_ERROR (char*) ;
 int dce_v8_0_audio_get_connected_pins (struct amdgpu_device*) ;

__attribute__((used)) static struct amdgpu_audio_pin *dce_v8_0_audio_get_pin(struct amdgpu_device *adev)
{
 int i;

 dce_v8_0_audio_get_connected_pins(adev);

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  if (adev->mode_info.audio.pin[i].connected)
   return &adev->mode_info.audio.pin[i];
 }
 DRM_ERROR("No connected audio pins found!\n");
 return ((void*)0);
}
