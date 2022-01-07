
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vm {int dummy; } ;
struct TYPE_4__ {int xgmi_map_counter; int lock_pstate; } ;
struct amdgpu_device {TYPE_2__ vm_manager; } ;
struct amdgpu_bo_va {int ref_count; int is_xgmi; int invalids; int valids; int base; } ;
struct TYPE_3__ {int bdev; } ;
struct amdgpu_bo {int preferred_domains; TYPE_1__ tbo; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int amdgpu_ttm_adev (int ) ;
 int amdgpu_vm_bo_base_init (int *,struct amdgpu_vm*,struct amdgpu_bo*) ;
 scalar_t__ amdgpu_xgmi_same_hive (struct amdgpu_device*,int ) ;
 int amdgpu_xgmi_set_pstate (struct amdgpu_device*,int) ;
 struct amdgpu_bo_va* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct amdgpu_bo_va *amdgpu_vm_bo_add(struct amdgpu_device *adev,
          struct amdgpu_vm *vm,
          struct amdgpu_bo *bo)
{
 struct amdgpu_bo_va *bo_va;

 bo_va = kzalloc(sizeof(struct amdgpu_bo_va), GFP_KERNEL);
 if (bo_va == ((void*)0)) {
  return ((void*)0);
 }
 amdgpu_vm_bo_base_init(&bo_va->base, vm, bo);

 bo_va->ref_count = 1;
 INIT_LIST_HEAD(&bo_va->valids);
 INIT_LIST_HEAD(&bo_va->invalids);

 if (bo && amdgpu_xgmi_same_hive(adev, amdgpu_ttm_adev(bo->tbo.bdev)) &&
     (bo->preferred_domains & AMDGPU_GEM_DOMAIN_VRAM)) {
  bo_va->is_xgmi = 1;
  mutex_lock(&adev->vm_manager.lock_pstate);

  if (++adev->vm_manager.xgmi_map_counter == 1)
   amdgpu_xgmi_set_pstate(adev, 1);
  mutex_unlock(&adev->vm_manager.lock_pstate);
 }

 return bo_va;
}
