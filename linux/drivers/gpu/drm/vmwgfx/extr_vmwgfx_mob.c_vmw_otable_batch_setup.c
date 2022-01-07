
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vmw_private {int bdev; } ;
struct vmw_otable_batch {size_t num_otables; TYPE_1__* otable_bo; struct vmw_otable* otables; } ;
struct vmw_otable {int size; scalar_t__ enabled; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_9__ {int (* ttm_tt_populate ) (int ,struct ttm_operation_ctx*) ;} ;
struct TYPE_8__ {int ttm; } ;
typedef size_t SVGAOTableType ;


 int BUG_ON (int) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int stub1 (int ,struct ttm_operation_ctx*) ;
 int ttm_bo_create (int *,unsigned long,int ,int *,int ,int,TYPE_1__**) ;
 int ttm_bo_put (TYPE_1__*) ;
 int ttm_bo_reserve (TYPE_1__*,int,int,int *) ;
 int ttm_bo_type_device ;
 int ttm_bo_unreserve (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 TYPE_3__ vmw_bo_driver ;
 int vmw_bo_map_dma (TYPE_1__*) ;
 int vmw_setup_otable_base (struct vmw_private*,size_t,TYPE_1__*,unsigned long,struct vmw_otable*) ;
 int vmw_sys_ne_placement ;
 int vmw_takedown_otable_base (struct vmw_private*,size_t,struct vmw_otable*) ;

__attribute__((used)) static int vmw_otable_batch_setup(struct vmw_private *dev_priv,
      struct vmw_otable_batch *batch)
{
 unsigned long offset;
 unsigned long bo_size;
 struct vmw_otable *otables = batch->otables;
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 SVGAOTableType i;
 int ret;

 bo_size = 0;
 for (i = 0; i < batch->num_otables; ++i) {
  if (!otables[i].enabled)
   continue;

  otables[i].size =
   (otables[i].size + PAGE_SIZE - 1) & PAGE_MASK;
  bo_size += otables[i].size;
 }

 ret = ttm_bo_create(&dev_priv->bdev, bo_size,
       ttm_bo_type_device,
       &vmw_sys_ne_placement,
       0, 0, &batch->otable_bo);

 if (unlikely(ret != 0))
  goto out_no_bo;

 ret = ttm_bo_reserve(batch->otable_bo, 0, 1, ((void*)0));
 BUG_ON(ret != 0);
 ret = vmw_bo_driver.ttm_tt_populate(batch->otable_bo->ttm, &ctx);
 if (unlikely(ret != 0))
  goto out_unreserve;
 ret = vmw_bo_map_dma(batch->otable_bo);
 if (unlikely(ret != 0))
  goto out_unreserve;

 ttm_bo_unreserve(batch->otable_bo);

 offset = 0;
 for (i = 0; i < batch->num_otables; ++i) {
  if (!batch->otables[i].enabled)
   continue;

  ret = vmw_setup_otable_base(dev_priv, i, batch->otable_bo,
         offset,
         &otables[i]);
  if (unlikely(ret != 0))
   goto out_no_setup;
  offset += otables[i].size;
 }

 return 0;

out_unreserve:
 ttm_bo_unreserve(batch->otable_bo);
out_no_setup:
 for (i = 0; i < batch->num_otables; ++i) {
  if (batch->otables[i].enabled)
   vmw_takedown_otable_base(dev_priv, i,
       &batch->otables[i]);
 }

 ttm_bo_put(batch->otable_bo);
 batch->otable_bo = ((void*)0);
out_no_bo:
 return ret;
}
