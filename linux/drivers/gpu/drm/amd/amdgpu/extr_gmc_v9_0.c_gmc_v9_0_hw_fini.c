
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_fault; int ecc_irq; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int DRM_DEBUG (char*) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gmc_v9_0_gart_disable (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v9_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev)) {

  DRM_DEBUG("For SRIOV client, shouldn't do anything.\n");
  return 0;
 }

 amdgpu_irq_put(adev, &adev->gmc.ecc_irq, 0);
 amdgpu_irq_put(adev, &adev->gmc.vm_fault, 0);
 gmc_v9_0_gart_disable(adev);

 return 0;
}
