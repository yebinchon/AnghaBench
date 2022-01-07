
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* entries; } ;
struct amdgpu_vm {TYPE_4__ root; } ;
struct TYPE_5__ {int root_level; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;
typedef enum amdgpu_vm_level { ____Placeholder_amdgpu_vm_level } amdgpu_vm_level ;
struct TYPE_6__ {scalar_t__ bo; } ;
struct TYPE_7__ {TYPE_2__ base; } ;


 int EINVAL ;
 unsigned int amdgpu_vm_num_entries (struct amdgpu_device*,int) ;

__attribute__((used)) static int amdgpu_vm_check_clean_reserved(struct amdgpu_device *adev,
 struct amdgpu_vm *vm)
{
 enum amdgpu_vm_level root = adev->vm_manager.root_level;
 unsigned int entries = amdgpu_vm_num_entries(adev, root);
 unsigned int i = 0;

 if (!(vm->root.entries))
  return 0;

 for (i = 0; i < entries; i++) {
  if (vm->root.entries[i].base.bo)
   return -EINVAL;
 }

 return 0;
}
