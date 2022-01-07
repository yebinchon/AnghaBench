
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct qxl_bo {TYPE_2__ tbo; } ;
struct drm_device {int dev; } ;


 int ERESTARTSYS ;
 int dev_err (int ,char*,struct qxl_bo*) ;
 int ttm_bo_reserve (TYPE_2__*,int,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int qxl_bo_reserve(struct qxl_bo *bo, bool no_wait)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, 1, no_wait, ((void*)0));
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS) {
   struct drm_device *ddev = bo->tbo.base.dev;

   dev_err(ddev->dev, "%p reserve failed\n", bo);
  }
  return r;
 }
 return 0;
}
