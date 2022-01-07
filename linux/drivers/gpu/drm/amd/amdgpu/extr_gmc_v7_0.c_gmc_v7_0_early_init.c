
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shared_aperture_start; unsigned long long shared_aperture_end; int private_aperture_start; unsigned long long private_aperture_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int gmc_v7_0_set_gmc_funcs (struct amdgpu_device*) ;
 int gmc_v7_0_set_irq_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v7_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gmc_v7_0_set_gmc_funcs(adev);
 gmc_v7_0_set_irq_funcs(adev);

 adev->gmc.shared_aperture_start = 0x2000000000000000ULL;
 adev->gmc.shared_aperture_end =
  adev->gmc.shared_aperture_start + (4ULL << 30) - 1;
 adev->gmc.private_aperture_start =
  adev->gmc.shared_aperture_end + 1;
 adev->gmc.private_aperture_end =
  adev->gmc.private_aperture_start + (4ULL << 30) - 1;

 return 0;
}
