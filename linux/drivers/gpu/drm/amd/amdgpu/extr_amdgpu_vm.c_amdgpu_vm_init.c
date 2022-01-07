
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* bo; } ;
struct TYPE_11__ {TYPE_5__ base; } ;
struct amdgpu_vm {int pte_support_ats; int use_cpu_for_update; unsigned int pasid; int entity; TYPE_4__ root; int faults; int * last_update; int * update_funcs; int freed; int invalidated_lock; int invalidated; int idle; int moved; int relocated; int evicted; int ** reserved_vmid; int va; } ;
struct TYPE_10__ {int vm_update_mode; int pasid_lock; int pasid_idr; int root_level; int vm_pte_num_rqs; int vm_pte_rqs; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ vm_manager; int gmc; } ;
struct amdgpu_bo_param {int flags; } ;
struct TYPE_8__ {int resv; } ;
struct TYPE_9__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_13__ {struct TYPE_13__* shadow; } ;


 int AMDGPU_GEM_CREATE_SHADOW ;
 int AMDGPU_MAX_VMHUBS ;
 int AMDGPU_VM_CONTEXT_COMPUTE ;
 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ;
 int AMDGPU_VM_USE_CPU_FOR_GFX ;
 scalar_t__ CHIP_RAVEN ;
 int DRM_DEBUG_DRIVER (char*,char*) ;
 int GFP_ATOMIC ;
 int INIT_KFIFO (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int WARN_ONCE (int,char*) ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unref (TYPE_6__**) ;
 int amdgpu_bo_unreserve (TYPE_6__*) ;
 int amdgpu_gmc_vram_full_visible (int *) ;
 int amdgpu_vm_bo_base_init (TYPE_5__*,struct amdgpu_vm*,struct amdgpu_bo*) ;
 int amdgpu_vm_bo_param (struct amdgpu_device*,struct amdgpu_vm*,int ,struct amdgpu_bo_param*) ;
 int amdgpu_vm_clear_bo (struct amdgpu_device*,struct amdgpu_vm*,struct amdgpu_bo*) ;
 int amdgpu_vm_cpu_funcs ;
 int amdgpu_vm_sdma_funcs ;
 int dma_resv_reserve_shared (int ,int) ;
 int drm_sched_entity_destroy (int *) ;
 int drm_sched_entity_init (int *,int ,int ,int *) ;
 int idr_alloc (int *,struct amdgpu_vm*,unsigned int,unsigned int,int ) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int amdgpu_vm_init(struct amdgpu_device *adev, struct amdgpu_vm *vm,
     int vm_context, unsigned int pasid)
{
 struct amdgpu_bo_param bp;
 struct amdgpu_bo *root;
 int r, i;

 vm->va = RB_ROOT_CACHED;
 for (i = 0; i < AMDGPU_MAX_VMHUBS; i++)
  vm->reserved_vmid[i] = ((void*)0);
 INIT_LIST_HEAD(&vm->evicted);
 INIT_LIST_HEAD(&vm->relocated);
 INIT_LIST_HEAD(&vm->moved);
 INIT_LIST_HEAD(&vm->idle);
 INIT_LIST_HEAD(&vm->invalidated);
 spin_lock_init(&vm->invalidated_lock);
 INIT_LIST_HEAD(&vm->freed);


 r = drm_sched_entity_init(&vm->entity, adev->vm_manager.vm_pte_rqs,
      adev->vm_manager.vm_pte_num_rqs, ((void*)0));
 if (r)
  return r;

 vm->pte_support_ats = 0;

 if (vm_context == AMDGPU_VM_CONTEXT_COMPUTE) {
  vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
      AMDGPU_VM_USE_CPU_FOR_COMPUTE);

  if (adev->asic_type == CHIP_RAVEN)
   vm->pte_support_ats = 1;
 } else {
  vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
      AMDGPU_VM_USE_CPU_FOR_GFX);
 }
 DRM_DEBUG_DRIVER("VM update mode is %s\n",
    vm->use_cpu_for_update ? "CPU" : "SDMA");
 WARN_ONCE((vm->use_cpu_for_update && !amdgpu_gmc_vram_full_visible(&adev->gmc)),
    "CPU update of VM recommended only for large BAR system\n");

 if (vm->use_cpu_for_update)
  vm->update_funcs = &amdgpu_vm_cpu_funcs;
 else
  vm->update_funcs = &amdgpu_vm_sdma_funcs;
 vm->last_update = ((void*)0);

 amdgpu_vm_bo_param(adev, vm, adev->vm_manager.root_level, &bp);
 if (vm_context == AMDGPU_VM_CONTEXT_COMPUTE)
  bp.flags &= ~AMDGPU_GEM_CREATE_SHADOW;
 r = amdgpu_bo_create(adev, &bp, &root);
 if (r)
  goto error_free_sched_entity;

 r = amdgpu_bo_reserve(root, 1);
 if (r)
  goto error_free_root;

 r = dma_resv_reserve_shared(root->tbo.base.resv, 1);
 if (r)
  goto error_unreserve;

 amdgpu_vm_bo_base_init(&vm->root.base, vm, root);

 r = amdgpu_vm_clear_bo(adev, vm, root);
 if (r)
  goto error_unreserve;

 amdgpu_bo_unreserve(vm->root.base.bo);

 if (pasid) {
  unsigned long flags;

  spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);
  r = idr_alloc(&adev->vm_manager.pasid_idr, vm, pasid, pasid + 1,
         GFP_ATOMIC);
  spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);
  if (r < 0)
   goto error_free_root;

  vm->pasid = pasid;
 }

 INIT_KFIFO(vm->faults);

 return 0;

error_unreserve:
 amdgpu_bo_unreserve(vm->root.base.bo);

error_free_root:
 amdgpu_bo_unref(&vm->root.base.bo->shadow);
 amdgpu_bo_unref(&vm->root.base.bo);
 vm->root.base.bo = ((void*)0);

error_free_sched_entity:
 drm_sched_entity_destroy(&vm->entity);

 return r;
}
