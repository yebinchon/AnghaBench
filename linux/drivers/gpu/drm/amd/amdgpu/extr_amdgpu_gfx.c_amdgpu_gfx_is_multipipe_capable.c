
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_mec; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ gfx; } ;


 scalar_t__ CHIP_POLARIS11 ;
 int DRM_INFO (char*,int) ;
 int amdgpu_compute_multipipe ;

__attribute__((used)) static bool amdgpu_gfx_is_multipipe_capable(struct amdgpu_device *adev)
{
 if (amdgpu_compute_multipipe != -1) {
  DRM_INFO("amdgpu: forcing compute pipe policy %d\n",
    amdgpu_compute_multipipe);
  return amdgpu_compute_multipipe == 1;
 }



 if (adev->asic_type == CHIP_POLARIS11)
  return 0;

 return adev->gfx.mec.num_mec > 1;
}
