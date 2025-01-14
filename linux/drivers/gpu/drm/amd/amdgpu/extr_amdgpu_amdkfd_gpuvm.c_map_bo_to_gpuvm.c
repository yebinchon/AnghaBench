
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_bo_va_list {int va; int pte_flags; TYPE_2__* bo_va; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int bo; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int amdgpu_bo_size (int ) ;
 int amdgpu_vm_bo_map (struct amdgpu_device*,TYPE_2__*,int ,int ,int ,int ) ;
 int pr_err (char*,...) ;
 int unmap_bo_from_gpuvm (struct amdgpu_device*,struct kfd_bo_va_list*,struct amdgpu_sync*) ;
 int update_gpuvm_pte (struct amdgpu_device*,struct kfd_bo_va_list*,struct amdgpu_sync*) ;

__attribute__((used)) static int map_bo_to_gpuvm(struct amdgpu_device *adev,
  struct kfd_bo_va_list *entry, struct amdgpu_sync *sync,
  bool no_update_pte)
{
 int ret;


 ret = amdgpu_vm_bo_map(adev, entry->bo_va, entry->va, 0,
          amdgpu_bo_size(entry->bo_va->base.bo),
          entry->pte_flags);
 if (ret) {
  pr_err("Failed to map VA 0x%llx in vm. ret %d\n",
    entry->va, ret);
  return ret;
 }

 if (no_update_pte)
  return 0;

 ret = update_gpuvm_pte(adev, entry, sync);
 if (ret) {
  pr_err("update_gpuvm_pte() failed\n");
  goto update_gpuvm_pte_failed;
 }

 return 0;

update_gpuvm_pte_failed:
 unmap_bo_from_gpuvm(adev, entry, sync);
 return ret;
}
