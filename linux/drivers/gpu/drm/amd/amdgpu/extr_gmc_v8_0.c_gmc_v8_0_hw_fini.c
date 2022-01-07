
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_fault; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 int gmc_v8_0_gart_disable (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v8_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_irq_put(adev, &adev->gmc.vm_fault, 0);
 gmc_v8_0_gart_disable(adev);

 return 0;
}
