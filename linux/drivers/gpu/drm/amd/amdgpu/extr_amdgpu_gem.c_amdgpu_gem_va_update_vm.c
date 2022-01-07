
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;


 scalar_t__ AMDGPU_VA_OP_MAP ;
 scalar_t__ AMDGPU_VA_OP_REPLACE ;
 int DRM_ERROR (char*,int) ;
 int ERESTARTSYS ;
 int amdgpu_vm_bo_update (struct amdgpu_device*,struct amdgpu_bo_va*,int) ;
 int amdgpu_vm_clear_freed (struct amdgpu_device*,struct amdgpu_vm*,int *) ;
 int amdgpu_vm_ready (struct amdgpu_vm*) ;
 int amdgpu_vm_update_directories (struct amdgpu_device*,struct amdgpu_vm*) ;

__attribute__((used)) static void amdgpu_gem_va_update_vm(struct amdgpu_device *adev,
        struct amdgpu_vm *vm,
        struct amdgpu_bo_va *bo_va,
        uint32_t operation)
{
 int r;

 if (!amdgpu_vm_ready(vm))
  return;

 r = amdgpu_vm_clear_freed(adev, vm, ((void*)0));
 if (r)
  goto error;

 if (operation == AMDGPU_VA_OP_MAP ||
     operation == AMDGPU_VA_OP_REPLACE) {
  r = amdgpu_vm_bo_update(adev, bo_va, 0);
  if (r)
   goto error;
 }

 r = amdgpu_vm_update_directories(adev, vm);

error:
 if (r && r != -ERESTARTSYS)
  DRM_ERROR("Couldn't update BO_VA (%d)\n", r);
}
