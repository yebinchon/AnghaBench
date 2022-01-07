
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_vm {int va; } ;
struct amdgpu_bo_va_mapping {int dummy; } ;


 struct amdgpu_bo_va_mapping* amdgpu_vm_it_iter_first (int *,int ,int ) ;

struct amdgpu_bo_va_mapping *amdgpu_vm_bo_lookup_mapping(struct amdgpu_vm *vm,
        uint64_t addr)
{
 return amdgpu_vm_it_iter_first(&vm->va, addr, addr);
}
