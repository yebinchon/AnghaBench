
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm {int evicted; } ;


 int list_empty (int *) ;

bool amdgpu_vm_ready(struct amdgpu_vm *vm)
{
 return list_empty(&vm->evicted);
}
