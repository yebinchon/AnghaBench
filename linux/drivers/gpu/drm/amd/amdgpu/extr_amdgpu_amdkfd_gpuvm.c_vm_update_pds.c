
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_vm {int last_update; TYPE_2__ root; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_6__ {int bdev; } ;
struct amdgpu_bo {TYPE_3__ tbo; } ;


 int amdgpu_sync_fence (int *,struct amdgpu_sync*,int ,int) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_vm_update_directories (struct amdgpu_device*,struct amdgpu_vm*) ;

__attribute__((used)) static int vm_update_pds(struct amdgpu_vm *vm, struct amdgpu_sync *sync)
{
 struct amdgpu_bo *pd = vm->root.base.bo;
 struct amdgpu_device *adev = amdgpu_ttm_adev(pd->tbo.bdev);
 int ret;

 ret = amdgpu_vm_update_directories(adev, vm);
 if (ret)
  return ret;

 return amdgpu_sync_fence(((void*)0), sync, vm->last_update, 0);
}
