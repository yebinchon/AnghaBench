
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vram_type; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 scalar_t__ AMDGPU_VRAM_TYPE_GDDR5 ;
 scalar_t__ amdgpu_dpm_get_vblank_time (struct amdgpu_device*) ;

__attribute__((used)) static bool si_dpm_vblank_too_short(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 vblank_time = amdgpu_dpm_get_vblank_time(adev);

 u32 switch_limit = adev->gmc.vram_type == AMDGPU_VRAM_TYPE_GDDR5 ? 450 : 0;

 if (vblank_time < switch_limit)
  return 1;
 else
  return 0;

}
