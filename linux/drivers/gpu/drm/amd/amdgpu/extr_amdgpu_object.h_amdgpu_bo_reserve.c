
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {int dev; } ;
struct TYPE_2__ {int bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;


 int ERESTARTSYS ;
 int __ttm_bo_reserve (TYPE_1__*,int,int,int *) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int dev_err (int ,char*,struct amdgpu_bo*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int amdgpu_bo_reserve(struct amdgpu_bo *bo, bool no_intr)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 int r;

 r = __ttm_bo_reserve(&bo->tbo, !no_intr, 0, ((void*)0));
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS)
   dev_err(adev->dev, "%p reserve failed\n", bo);
  return r;
 }
 return 0;
}
