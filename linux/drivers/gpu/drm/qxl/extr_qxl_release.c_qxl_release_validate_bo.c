
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_5__ {TYPE_1__* dev; int resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct qxl_bo {TYPE_3__ tbo; int placement; int type; int pin_count; } ;
struct TYPE_4__ {int dev_private; } ;


 int dma_resv_reserve_shared (int ,int) ;
 int qxl_bo_check_id (int ,struct qxl_bo*) ;
 int qxl_ttm_placement_from_domain (struct qxl_bo*,int ,int) ;
 int ttm_bo_validate (TYPE_3__*,int *,struct ttm_operation_ctx*) ;

__attribute__((used)) static int qxl_release_validate_bo(struct qxl_bo *bo)
{
 struct ttm_operation_ctx ctx = { 1, 0 };
 int ret;

 if (!bo->pin_count) {
  qxl_ttm_placement_from_domain(bo, bo->type, 0);
  ret = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
  if (ret)
   return ret;
 }

 ret = dma_resv_reserve_shared(bo->tbo.base.resv, 1);
 if (ret)
  return ret;


 ret = qxl_bo_check_id(bo->tbo.base.dev->dev_private, bo);
 if (ret)
  return ret;
 return 0;
}
