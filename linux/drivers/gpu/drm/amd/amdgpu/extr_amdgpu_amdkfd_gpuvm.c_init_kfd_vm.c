
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct dma_fence {int dummy; } ;
struct amdkfd_process_info {int lock; int pid; TYPE_12__* eviction_fence; int restore_userptr_work; int evicted_bos; int userptr_inval_list; int userptr_valid_list; int kfd_bo_list; int vm_list_head; } ;
struct TYPE_17__ {TYPE_8__* bo; } ;
struct TYPE_18__ {TYPE_4__ base; } ;
struct amdgpu_vm {TYPE_6__* process_info; TYPE_5__ root; int vm_list_node; } ;
struct TYPE_14__ {int resv; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
struct TYPE_21__ {TYPE_2__ tbo; } ;
struct TYPE_20__ {int group_leader; int mm; } ;
struct TYPE_19__ {int lock; int n_vms; int vm_list_head; TYPE_3__* eviction_fence; } ;
struct TYPE_16__ {int base; } ;
struct TYPE_13__ {struct dma_fence base; } ;


 int AMDGPU_FENCE_OWNER_KFD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int PIDTYPE_PID ;
 TYPE_12__* amdgpu_amdkfd_fence_create (int ,int ) ;
 int amdgpu_amdkfd_restore_userptr_worker ;
 int amdgpu_bo_fence (TYPE_8__*,int *,int) ;
 int amdgpu_bo_reserve (TYPE_8__*,int) ;
 int amdgpu_bo_sync_wait (TYPE_8__*,int ,int) ;
 int amdgpu_bo_unreserve (TYPE_8__*) ;
 int atomic_set (int *,int ) ;
 TYPE_7__* current ;
 int dma_fence_context_alloc (int) ;
 struct dma_fence* dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_reserve_shared (int ,int) ;
 int get_task_pid (int ,int ) ;
 int kfree (struct amdkfd_process_info*) ;
 struct amdkfd_process_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int put_pid (int ) ;
 int vm_validate_pt_pd_bos (struct amdgpu_vm*) ;

__attribute__((used)) static int init_kfd_vm(struct amdgpu_vm *vm, void **process_info,
         struct dma_fence **ef)
{
 struct amdkfd_process_info *info = ((void*)0);
 int ret;

 if (!*process_info) {
  info = kzalloc(sizeof(*info), GFP_KERNEL);
  if (!info)
   return -ENOMEM;

  mutex_init(&info->lock);
  INIT_LIST_HEAD(&info->vm_list_head);
  INIT_LIST_HEAD(&info->kfd_bo_list);
  INIT_LIST_HEAD(&info->userptr_valid_list);
  INIT_LIST_HEAD(&info->userptr_inval_list);

  info->eviction_fence =
   amdgpu_amdkfd_fence_create(dma_fence_context_alloc(1),
         current->mm);
  if (!info->eviction_fence) {
   pr_err("Failed to create eviction fence\n");
   ret = -ENOMEM;
   goto create_evict_fence_fail;
  }

  info->pid = get_task_pid(current->group_leader, PIDTYPE_PID);
  atomic_set(&info->evicted_bos, 0);
  INIT_DELAYED_WORK(&info->restore_userptr_work,
      amdgpu_amdkfd_restore_userptr_worker);

  *process_info = info;
  *ef = dma_fence_get(&info->eviction_fence->base);
 }

 vm->process_info = *process_info;


 ret = amdgpu_bo_reserve(vm->root.base.bo, 1);
 if (ret)
  goto reserve_pd_fail;
 ret = vm_validate_pt_pd_bos(vm);
 if (ret) {
  pr_err("validate_pt_pd_bos() failed\n");
  goto validate_pd_fail;
 }
 ret = amdgpu_bo_sync_wait(vm->root.base.bo,
      AMDGPU_FENCE_OWNER_KFD, 0);
 if (ret)
  goto wait_pd_fail;
 ret = dma_resv_reserve_shared(vm->root.base.bo->tbo.base.resv, 1);
 if (ret)
  goto reserve_shared_fail;
 amdgpu_bo_fence(vm->root.base.bo,
   &vm->process_info->eviction_fence->base, 1);
 amdgpu_bo_unreserve(vm->root.base.bo);


 mutex_lock(&vm->process_info->lock);
 list_add_tail(&vm->vm_list_node,
   &(vm->process_info->vm_list_head));
 vm->process_info->n_vms++;
 mutex_unlock(&vm->process_info->lock);

 return 0;

reserve_shared_fail:
wait_pd_fail:
validate_pd_fail:
 amdgpu_bo_unreserve(vm->root.base.bo);
reserve_pd_fail:
 vm->process_info = ((void*)0);
 if (info) {

  dma_fence_put(&info->eviction_fence->base);
  dma_fence_put(*ef);
  *ef = ((void*)0);
  *process_info = ((void*)0);
  put_pid(info->pid);
create_evict_fence_fail:
  mutex_destroy(&info->lock);
  kfree(info);
 }
 return ret;
}
