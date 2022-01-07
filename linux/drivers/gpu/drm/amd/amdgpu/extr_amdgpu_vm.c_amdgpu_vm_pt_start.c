
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_vm_pt_cursor {int level; int * entry; int * parent; int pfn; } ;
struct amdgpu_vm {int root; } ;
struct TYPE_2__ {int root_level; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;



__attribute__((used)) static void amdgpu_vm_pt_start(struct amdgpu_device *adev,
          struct amdgpu_vm *vm, uint64_t start,
          struct amdgpu_vm_pt_cursor *cursor)
{
 cursor->pfn = start;
 cursor->parent = ((void*)0);
 cursor->entry = &vm->root;
 cursor->level = adev->vm_manager.root_level;
}
