
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int amdgpu_vm_fini (struct amdgpu_device*,struct amdgpu_vm*) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int kfree (void*) ;
 int pr_debug (char*,void*) ;

void amdgpu_amdkfd_gpuvm_destroy_process_vm(struct kgd_dev *kgd, void *vm)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 struct amdgpu_vm *avm = (struct amdgpu_vm *)vm;

 if (WARN_ON(!kgd || !vm))
  return;

 pr_debug("Destroying process vm %p\n", vm);


 amdgpu_vm_fini(adev, avm);
 kfree(vm);
}
