
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pasid_idr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 int WARN_ON (int) ;
 int amdgpu_vmid_mgr_fini (struct amdgpu_device*) ;
 int idr_destroy (int *) ;
 int idr_is_empty (int *) ;

void amdgpu_vm_manager_fini(struct amdgpu_device *adev)
{
 WARN_ON(!idr_is_empty(&adev->vm_manager.pasid_idr));
 idr_destroy(&adev->vm_manager.pasid_idr);

 amdgpu_vmid_mgr_fini(adev);
}
