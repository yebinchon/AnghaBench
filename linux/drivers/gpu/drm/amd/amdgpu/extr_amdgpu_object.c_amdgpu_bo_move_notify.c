
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {int mem_type; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int bdev; } ;
struct amdgpu_device {int num_evictions; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_is_amdgpu_bo (struct ttm_buffer_object*) ;
 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_vm_bo_invalidate (struct amdgpu_device*,struct amdgpu_bo*,int) ;
 int atomic64_inc (int *) ;
 int trace_amdgpu_bo_move (struct amdgpu_bo*,int ,int ) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

void amdgpu_bo_move_notify(struct ttm_buffer_object *bo,
      bool evict,
      struct ttm_mem_reg *new_mem)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->bdev);
 struct amdgpu_bo *abo;
 struct ttm_mem_reg *old_mem = &bo->mem;

 if (!amdgpu_bo_is_amdgpu_bo(bo))
  return;

 abo = ttm_to_amdgpu_bo(bo);
 amdgpu_vm_bo_invalidate(adev, abo, evict);

 amdgpu_bo_kunmap(abo);


 if (evict)
  atomic64_inc(&adev->num_evictions);


 if (!new_mem)
  return;


 trace_amdgpu_bo_move(abo, new_mem->mem_type, old_mem->mem_type);
}
