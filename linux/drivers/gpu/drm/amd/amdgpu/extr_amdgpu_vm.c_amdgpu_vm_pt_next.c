
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm_pt_cursor {long long pfn; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_vm_pt_ancestor (struct amdgpu_vm_pt_cursor*) ;
 scalar_t__ amdgpu_vm_pt_descendant (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ;
 int amdgpu_vm_pt_sibling (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ;

__attribute__((used)) static void amdgpu_vm_pt_next(struct amdgpu_device *adev,
         struct amdgpu_vm_pt_cursor *cursor)
{

 if (amdgpu_vm_pt_descendant(adev, cursor))
  return;


 while (!amdgpu_vm_pt_sibling(adev, cursor)) {

  if (!amdgpu_vm_pt_ancestor(cursor)) {
   cursor->pfn = ~0ll;
   return;
  }
 }
}
