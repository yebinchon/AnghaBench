
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va_mapping {int flags; } ;


 int AMDGPU_PTE_PRT ;
 int amdgpu_vm_add_prt_cb (struct amdgpu_device*,struct dma_fence*) ;
 int kfree (struct amdgpu_bo_va_mapping*) ;

__attribute__((used)) static void amdgpu_vm_free_mapping(struct amdgpu_device *adev,
       struct amdgpu_vm *vm,
       struct amdgpu_bo_va_mapping *mapping,
       struct dma_fence *fence)
{
 if (mapping->flags & AMDGPU_PTE_PRT)
  amdgpu_vm_add_prt_cb(adev, fence);
 kfree(mapping);
}
