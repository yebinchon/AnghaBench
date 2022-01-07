
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;



int amdgpu_dm_get_encoder_crtc_mask(struct amdgpu_device *adev)
{
 switch (adev->mode_info.num_crtc) {
 case 1:
  return 0x1;
 case 2:
  return 0x3;
 case 3:
  return 0x7;
 case 4:
  return 0xf;
 case 5:
  return 0x1f;
 case 6:
 default:
  return 0x3f;
 }
}
