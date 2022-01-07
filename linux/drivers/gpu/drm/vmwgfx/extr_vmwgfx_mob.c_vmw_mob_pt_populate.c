
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vmw_private {int bdev; } ;
struct vmw_mob {int num_pages; TYPE_1__* pt_bo; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_8__ {int (* ttm_tt_populate ) (int ,struct ttm_operation_ctx*) ;} ;
struct TYPE_7__ {int ttm; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int stub1 (int ,struct ttm_operation_ctx*) ;
 int ttm_bo_create (int *,int,int ,int *,int ,int,TYPE_1__**) ;
 int ttm_bo_put (TYPE_1__*) ;
 int ttm_bo_reserve (TYPE_1__*,int,int,int *) ;
 int ttm_bo_type_device ;
 int ttm_bo_unreserve (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 TYPE_2__ vmw_bo_driver ;
 int vmw_bo_map_dma (TYPE_1__*) ;
 int vmw_sys_ne_placement ;

__attribute__((used)) static int vmw_mob_pt_populate(struct vmw_private *dev_priv,
          struct vmw_mob *mob)
{
 int ret;
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };

 BUG_ON(mob->pt_bo != ((void*)0));

 ret = ttm_bo_create(&dev_priv->bdev, mob->num_pages * PAGE_SIZE,
       ttm_bo_type_device,
       &vmw_sys_ne_placement,
       0, 0, &mob->pt_bo);
 if (unlikely(ret != 0))
  return ret;

 ret = ttm_bo_reserve(mob->pt_bo, 0, 1, ((void*)0));

 BUG_ON(ret != 0);
 ret = vmw_bo_driver.ttm_tt_populate(mob->pt_bo->ttm, &ctx);
 if (unlikely(ret != 0))
  goto out_unreserve;
 ret = vmw_bo_map_dma(mob->pt_bo);
 if (unlikely(ret != 0))
  goto out_unreserve;

 ttm_bo_unreserve(mob->pt_bo);

 return 0;

out_unreserve:
 ttm_bo_unreserve(mob->pt_bo);
 ttm_bo_put(mob->pt_bo);
 mob->pt_bo = ((void*)0);

 return ret;
}
