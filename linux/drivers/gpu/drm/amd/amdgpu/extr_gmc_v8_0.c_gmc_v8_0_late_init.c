
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_fault; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 scalar_t__ AMDGPU_VM_FAULT_STOP_ALWAYS ;
 int amdgpu_bo_late_init (struct amdgpu_device*) ;
 int amdgpu_irq_get (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_vm_fault_stop ;

__attribute__((used)) static int gmc_v8_0_late_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_bo_late_init(adev);

 if (amdgpu_vm_fault_stop != AMDGPU_VM_FAULT_STOP_ALWAYS)
  return amdgpu_irq_get(adev, &adev->gmc.vm_fault, 0);
 else
  return 0;
}
