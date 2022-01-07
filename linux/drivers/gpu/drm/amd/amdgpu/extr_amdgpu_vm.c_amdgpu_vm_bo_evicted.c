
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vm_bo_base {int moved; int vm_status; struct amdgpu_bo* bo; struct amdgpu_vm* vm; } ;
struct amdgpu_vm {int evicted; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;


 int list_move (int *,int *) ;
 int list_move_tail (int *,int *) ;
 scalar_t__ ttm_bo_type_kernel ;

__attribute__((used)) static void amdgpu_vm_bo_evicted(struct amdgpu_vm_bo_base *vm_bo)
{
 struct amdgpu_vm *vm = vm_bo->vm;
 struct amdgpu_bo *bo = vm_bo->bo;

 vm_bo->moved = 1;
 if (bo->tbo.type == ttm_bo_type_kernel)
  list_move(&vm_bo->vm_status, &vm->evicted);
 else
  list_move_tail(&vm_bo->vm_status, &vm->evicted);
}
