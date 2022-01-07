
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_VM_CONTEXT_COMPUTE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_vm_fini (struct amdgpu_device*,struct amdgpu_vm*) ;
 int amdgpu_vm_init (struct amdgpu_device*,struct amdgpu_vm*,int ,unsigned int) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int init_kfd_vm (struct amdgpu_vm*,void**,struct dma_fence**) ;
 int kfree (struct amdgpu_vm*) ;
 struct amdgpu_vm* kzalloc (int,int ) ;
 int pr_err (char*,int) ;

int amdgpu_amdkfd_gpuvm_create_process_vm(struct kgd_dev *kgd, unsigned int pasid,
       void **vm, void **process_info,
       struct dma_fence **ef)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 struct amdgpu_vm *new_vm;
 int ret;

 new_vm = kzalloc(sizeof(*new_vm), GFP_KERNEL);
 if (!new_vm)
  return -ENOMEM;


 ret = amdgpu_vm_init(adev, new_vm, AMDGPU_VM_CONTEXT_COMPUTE, pasid);
 if (ret) {
  pr_err("Failed init vm ret %d\n", ret);
  goto amdgpu_vm_init_fail;
 }


 ret = init_kfd_vm(new_vm, process_info, ef);
 if (ret)
  goto init_kfd_vm_fail;

 *vm = (void *) new_vm;

 return 0;

init_kfd_vm_fail:
 amdgpu_vm_fini(adev, new_vm);
amdgpu_vm_init_fail:
 kfree(new_vm);
 return ret;
}
