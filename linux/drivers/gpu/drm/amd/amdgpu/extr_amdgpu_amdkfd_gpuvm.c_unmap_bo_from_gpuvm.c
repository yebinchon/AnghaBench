
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_bo_va_list {int va; struct amdgpu_bo_va* bo_va; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_vm* vm; } ;
struct amdgpu_bo_va {int last_pt_update; TYPE_1__ base; } ;


 int amdgpu_sync_fence (int *,struct amdgpu_sync*,int ,int) ;
 int amdgpu_vm_bo_unmap (struct amdgpu_device*,struct amdgpu_bo_va*,int ) ;
 int amdgpu_vm_clear_freed (struct amdgpu_device*,struct amdgpu_vm*,int *) ;

__attribute__((used)) static int unmap_bo_from_gpuvm(struct amdgpu_device *adev,
    struct kfd_bo_va_list *entry,
    struct amdgpu_sync *sync)
{
 struct amdgpu_bo_va *bo_va = entry->bo_va;
 struct amdgpu_vm *vm = bo_va->base.vm;

 amdgpu_vm_bo_unmap(adev, bo_va, entry->va);

 amdgpu_vm_clear_freed(adev, vm, &bo_va->last_pt_update);

 amdgpu_sync_fence(((void*)0), sync, bo_va->last_pt_update, 0);

 return 0;
}
