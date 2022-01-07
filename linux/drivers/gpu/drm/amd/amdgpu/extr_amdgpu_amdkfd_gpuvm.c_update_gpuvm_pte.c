
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_bo_va_list {struct amdgpu_bo_va* bo_va; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int last_pt_update; } ;


 int amdgpu_sync_fence (int *,struct amdgpu_sync*,int ,int) ;
 int amdgpu_vm_bo_update (struct amdgpu_device*,struct amdgpu_bo_va*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int update_gpuvm_pte(struct amdgpu_device *adev,
  struct kfd_bo_va_list *entry,
  struct amdgpu_sync *sync)
{
 int ret;
 struct amdgpu_bo_va *bo_va = entry->bo_va;


 ret = amdgpu_vm_bo_update(adev, bo_va, 0);
 if (ret) {
  pr_err("amdgpu_vm_bo_update failed\n");
  return ret;
 }

 return amdgpu_sync_fence(((void*)0), sync, bo_va->last_pt_update, 0);
}
