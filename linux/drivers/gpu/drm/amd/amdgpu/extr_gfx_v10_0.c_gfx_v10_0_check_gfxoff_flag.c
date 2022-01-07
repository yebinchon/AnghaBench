
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pp_feature; } ;
struct amdgpu_device {int asic_type; TYPE_1__ pm; } ;



 int PP_GFXOFF_MASK ;

__attribute__((used)) static void gfx_v10_0_check_gfxoff_flag(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 128:
  adev->pm.pp_feature &= ~PP_GFXOFF_MASK;
  break;
 default:
  break;
 }
}
