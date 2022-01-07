
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct qxl_bo {int pin_count; int placement; TYPE_2__ tbo; int type; } ;
struct drm_device {int dev; } ;


 int dev_err (int ,char*,struct qxl_bo*) ;
 scalar_t__ likely (int) ;
 int qxl_ttm_placement_from_domain (struct qxl_bo*,int ,int) ;
 int ttm_bo_validate (TYPE_2__*,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __qxl_bo_pin(struct qxl_bo *bo)
{
 struct ttm_operation_ctx ctx = { 0, 0 };
 struct drm_device *ddev = bo->tbo.base.dev;
 int r;

 if (bo->pin_count) {
  bo->pin_count++;
  return 0;
 }
 qxl_ttm_placement_from_domain(bo, bo->type, 1);
 r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 if (likely(r == 0)) {
  bo->pin_count = 1;
 }
 if (unlikely(r != 0))
  dev_err(ddev->dev, "%p pin failed\n", bo);
 return r;
}
