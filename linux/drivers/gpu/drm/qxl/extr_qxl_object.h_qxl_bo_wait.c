
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int mem_type; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct TYPE_8__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct qxl_bo {TYPE_3__ tbo; } ;
struct drm_device {int dev; } ;


 int ERESTARTSYS ;
 int dev_err (int ,char*,struct qxl_bo*) ;
 int ttm_bo_reserve (TYPE_3__*,int,int,int *) ;
 int ttm_bo_unreserve (TYPE_3__*) ;
 int ttm_bo_wait (TYPE_3__*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int qxl_bo_wait(struct qxl_bo *bo, u32 *mem_type,
         bool no_wait)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, 1, no_wait, ((void*)0));
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS) {
   struct drm_device *ddev = bo->tbo.base.dev;

   dev_err(ddev->dev, "%p reserve failed for wait\n",
    bo);
  }
  return r;
 }
 if (mem_type)
  *mem_type = bo->tbo.mem.mem_type;

 r = ttm_bo_wait(&bo->tbo, 1, no_wait);
 ttm_bo_unreserve(&bo->tbo);
 return r;
}
