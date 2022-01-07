
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* bo; } ;
struct TYPE_9__ {TYPE_2__ base; } ;
struct amdgpu_vm {int pte_support_ats; int use_cpu_for_update; int pasid; TYPE_3__ root; int * last_update; int * update_funcs; } ;
struct TYPE_7__ {int vm_update_mode; int pasid_lock; int pasid_idr; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ vm_manager; int gmc; } ;
struct TYPE_10__ {int shadow; } ;


 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ;
 scalar_t__ CHIP_RAVEN ;
 int DRM_DEBUG_DRIVER (char*,char*) ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 int WARN_ONCE (int,char*) ;
 int amdgpu_bo_reserve (TYPE_4__*,int) ;
 int amdgpu_bo_unref (int *) ;
 int amdgpu_bo_unreserve (TYPE_4__*) ;
 int amdgpu_gmc_vram_full_visible (int *) ;
 int amdgpu_pasid_free (unsigned int) ;
 int amdgpu_vm_check_clean_reserved (struct amdgpu_device*,struct amdgpu_vm*) ;
 int amdgpu_vm_clear_bo (struct amdgpu_device*,struct amdgpu_vm*,TYPE_4__*) ;
 int amdgpu_vm_cpu_funcs ;
 int amdgpu_vm_sdma_funcs ;
 int dma_fence_put (int *) ;
 int idr_alloc (int *,struct amdgpu_vm*,unsigned int,unsigned int,int ) ;
 int idr_remove (int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int amdgpu_vm_make_compute(struct amdgpu_device *adev, struct amdgpu_vm *vm, unsigned int pasid)
{
 bool pte_support_ats = (adev->asic_type == CHIP_RAVEN);
 int r;

 r = amdgpu_bo_reserve(vm->root.base.bo, 1);
 if (r)
  return r;


 r = amdgpu_vm_check_clean_reserved(adev, vm);
 if (r)
  goto unreserve_bo;

 if (pasid) {
  unsigned long flags;

  spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);
  r = idr_alloc(&adev->vm_manager.pasid_idr, vm, pasid, pasid + 1,
         GFP_ATOMIC);
  spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);

  if (r == -ENOSPC)
   goto unreserve_bo;
  r = 0;
 }




 if (pte_support_ats != vm->pte_support_ats) {
  vm->pte_support_ats = pte_support_ats;
  r = amdgpu_vm_clear_bo(adev, vm, vm->root.base.bo);
  if (r)
   goto free_idr;
 }


 vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
        AMDGPU_VM_USE_CPU_FOR_COMPUTE);
 DRM_DEBUG_DRIVER("VM update mode is %s\n",
    vm->use_cpu_for_update ? "CPU" : "SDMA");
 WARN_ONCE((vm->use_cpu_for_update && !amdgpu_gmc_vram_full_visible(&adev->gmc)),
    "CPU update of VM recommended only for large BAR system\n");

 if (vm->use_cpu_for_update)
  vm->update_funcs = &amdgpu_vm_cpu_funcs;
 else
  vm->update_funcs = &amdgpu_vm_sdma_funcs;
 dma_fence_put(vm->last_update);
 vm->last_update = ((void*)0);

 if (vm->pasid) {
  unsigned long flags;

  spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);
  idr_remove(&adev->vm_manager.pasid_idr, vm->pasid);
  spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);




  amdgpu_pasid_free(vm->pasid);
  vm->pasid = 0;
 }


 amdgpu_bo_unref(&vm->root.base.bo->shadow);

 if (pasid)
  vm->pasid = pasid;

 goto unreserve_bo;

free_idr:
 if (pasid) {
  unsigned long flags;

  spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);
  idr_remove(&adev->vm_manager.pasid_idr, pasid);
  spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);
 }
unreserve_bo:
 amdgpu_bo_unreserve(vm->root.base.bo);
 return r;
}
