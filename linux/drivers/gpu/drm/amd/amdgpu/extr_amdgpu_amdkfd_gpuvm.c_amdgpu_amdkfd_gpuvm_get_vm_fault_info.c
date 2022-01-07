
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgd_dev {int dummy; } ;
struct kfd_vm_fault_info {int dummy; } ;
struct TYPE_2__ {int vm_fault_info_updated; struct kfd_vm_fault_info* vm_fault_info; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int mb () ;

int amdgpu_amdkfd_gpuvm_get_vm_fault_info(struct kgd_dev *kgd,
           struct kfd_vm_fault_info *mem)
{
 struct amdgpu_device *adev;

 adev = (struct amdgpu_device *)kgd;
 if (atomic_read(&adev->gmc.vm_fault_info_updated) == 1) {
  *mem = *adev->gmc.vm_fault_info;
  mb();
  atomic_set(&adev->gmc.vm_fault_info_updated, 0);
 }
 return 0;
}
