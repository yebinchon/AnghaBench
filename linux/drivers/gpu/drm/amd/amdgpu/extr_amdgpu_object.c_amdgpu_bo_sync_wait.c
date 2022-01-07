
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; int bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;


 int amdgpu_sync_create (struct amdgpu_sync*) ;
 int amdgpu_sync_free (struct amdgpu_sync*) ;
 int amdgpu_sync_resv (struct amdgpu_device*,struct amdgpu_sync*,int ,void*,int) ;
 int amdgpu_sync_wait (struct amdgpu_sync*,int) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;

int amdgpu_bo_sync_wait(struct amdgpu_bo *bo, void *owner, bool intr)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 struct amdgpu_sync sync;
 int r;

 amdgpu_sync_create(&sync);
 amdgpu_sync_resv(adev, &sync, bo->tbo.base.resv, owner, 0);
 r = amdgpu_sync_wait(&sync, intr);
 amdgpu_sync_free(&sync);

 return r;
}
