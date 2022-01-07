
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_crtc; int num_hpd; int num_dig; int * funcs; } ;
struct amdgpu_device {int asic_type; TYPE_2__* ddev; TYPE_1__ mode_info; } ;
struct TYPE_4__ {int dev; } ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int amdgpu_dm_set_irq_funcs (struct amdgpu_device*) ;
 int dev_attr_s3_debug ;
 int device_create_file (int ,int *) ;
 int dm_display_funcs ;

__attribute__((used)) static int dm_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 switch (adev->asic_type) {
 case 148:
 case 145:
  adev->mode_info.num_crtc = 6;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 case 143:
  adev->mode_info.num_crtc = 4;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 7;
  break;
 case 144:
 case 142:
  adev->mode_info.num_crtc = 2;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 case 146:
 case 132:
  adev->mode_info.num_crtc = 6;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 7;
  break;
 case 147:
  adev->mode_info.num_crtc = 3;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 9;
  break;
 case 133:
  adev->mode_info.num_crtc = 2;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 9;
  break;
 case 137:
 case 136:
  adev->mode_info.num_crtc = 5;
  adev->mode_info.num_hpd = 5;
  adev->mode_info.num_dig = 5;
  break;
 case 138:
 case 128:
  adev->mode_info.num_crtc = 6;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 case 131:
 case 130:
 case 129:
  adev->mode_info.num_crtc = 6;
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 default:
  DRM_ERROR("Unsupported ASIC type: 0x%X\n", adev->asic_type);
  return -EINVAL;
 }

 amdgpu_dm_set_irq_funcs(adev);

 if (adev->mode_info.funcs == ((void*)0))
  adev->mode_info.funcs = &dm_display_funcs;
 return 0;
}
