
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdkfd_process_info {int lock; int pid; int restore_userptr_work; TYPE_3__* eviction_fence; int userptr_inval_list; int userptr_valid_list; int kfd_bo_list; int n_vms; } ;
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_vm {int vm_list_node; TYPE_2__ root; struct amdkfd_process_info* process_info; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int base; } ;


 int WARN_ON (int) ;
 int amdgpu_bo_fence (struct amdgpu_bo*,int *,int) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int cancel_delayed_work_sync (int *) ;
 int dma_fence_put (int *) ;
 int kfree (struct amdkfd_process_info*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pid (int ) ;

void amdgpu_amdkfd_gpuvm_destroy_cb(struct amdgpu_device *adev,
        struct amdgpu_vm *vm)
{
 struct amdkfd_process_info *process_info = vm->process_info;
 struct amdgpu_bo *pd = vm->root.base.bo;

 if (!process_info)
  return;


 amdgpu_bo_reserve(pd, 0);
 amdgpu_bo_fence(pd, ((void*)0), 0);
 amdgpu_bo_unreserve(pd);


 mutex_lock(&process_info->lock);
 process_info->n_vms--;
 list_del(&vm->vm_list_node);
 mutex_unlock(&process_info->lock);


 if (!process_info->n_vms) {
  WARN_ON(!list_empty(&process_info->kfd_bo_list));
  WARN_ON(!list_empty(&process_info->userptr_valid_list));
  WARN_ON(!list_empty(&process_info->userptr_inval_list));

  dma_fence_put(&process_info->eviction_fence->base);
  cancel_delayed_work_sync(&process_info->restore_userptr_work);
  put_pid(process_info->pid);
  mutex_destroy(&process_info->lock);
  kfree(process_info);
 }
}
