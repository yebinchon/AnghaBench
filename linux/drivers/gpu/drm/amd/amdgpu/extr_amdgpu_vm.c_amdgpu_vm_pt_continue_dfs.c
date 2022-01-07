
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm_pt_cursor {struct amdgpu_vm_pt* entry; } ;
struct amdgpu_vm_pt {int dummy; } ;



__attribute__((used)) static bool amdgpu_vm_pt_continue_dfs(struct amdgpu_vm_pt_cursor *start,
          struct amdgpu_vm_pt *entry)
{
 return entry && (!start || entry != start->entry);
}
