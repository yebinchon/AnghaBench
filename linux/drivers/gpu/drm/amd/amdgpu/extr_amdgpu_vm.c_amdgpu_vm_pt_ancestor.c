
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm_pt_cursor {scalar_t__ parent; scalar_t__ entry; int level; } ;


 scalar_t__ amdgpu_vm_pt_parent (scalar_t__) ;

__attribute__((used)) static bool amdgpu_vm_pt_ancestor(struct amdgpu_vm_pt_cursor *cursor)
{
 if (!cursor->parent)
  return 0;

 --cursor->level;
 cursor->entry = cursor->parent;
 cursor->parent = amdgpu_vm_pt_parent(cursor->parent);
 return 1;
}
