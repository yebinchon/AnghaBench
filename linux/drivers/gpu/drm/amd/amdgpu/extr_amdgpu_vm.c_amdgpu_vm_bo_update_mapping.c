
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm_update_params {int * pages_addr; struct amdgpu_vm* vm; struct amdgpu_device* adev; } ;
struct amdgpu_vm {TYPE_1__* update_funcs; } ;
struct amdgpu_device {int dummy; } ;
typedef int params ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* prepare ) (struct amdgpu_vm_update_params*,void*,struct dma_fence*) ;int (* commit ) (struct amdgpu_vm_update_params*,struct dma_fence**) ;} ;


 void* AMDGPU_FENCE_OWNER_KFD ;
 void* AMDGPU_FENCE_OWNER_VM ;
 int AMDGPU_PTE_VALID ;
 int amdgpu_vm_update_ptes (struct amdgpu_vm_update_params*,int,int,int,int) ;
 int memset (struct amdgpu_vm_update_params*,int ,int) ;
 int stub1 (struct amdgpu_vm_update_params*,void*,struct dma_fence*) ;
 int stub2 (struct amdgpu_vm_update_params*,struct dma_fence**) ;

__attribute__((used)) static int amdgpu_vm_bo_update_mapping(struct amdgpu_device *adev,
           struct dma_fence *exclusive,
           dma_addr_t *pages_addr,
           struct amdgpu_vm *vm,
           uint64_t start, uint64_t last,
           uint64_t flags, uint64_t addr,
           struct dma_fence **fence)
{
 struct amdgpu_vm_update_params params;
 void *owner = AMDGPU_FENCE_OWNER_VM;
 int r;

 memset(&params, 0, sizeof(params));
 params.adev = adev;
 params.vm = vm;
 params.pages_addr = pages_addr;


 if (!(flags & AMDGPU_PTE_VALID))
  owner = AMDGPU_FENCE_OWNER_KFD;

 r = vm->update_funcs->prepare(&params, owner, exclusive);
 if (r)
  return r;

 r = amdgpu_vm_update_ptes(&params, start, last + 1, addr, flags);
 if (r)
  return r;

 return vm->update_funcs->commit(&params, fence);
}
