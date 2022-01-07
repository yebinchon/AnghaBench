
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int dummy; } ;
struct vmw_otable_batch {size_t num_otables; struct ttm_buffer_object* otable_bo; TYPE_1__* otables; } ;
struct ttm_buffer_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
typedef size_t SVGAOTableType ;


 int BUG_ON (int) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int vmw_bo_fence_single (struct ttm_buffer_object*,int *) ;
 int vmw_takedown_otable_base (struct vmw_private*,size_t,TYPE_1__*) ;

__attribute__((used)) static void vmw_otable_batch_takedown(struct vmw_private *dev_priv,
          struct vmw_otable_batch *batch)
{
 SVGAOTableType i;
 struct ttm_buffer_object *bo = batch->otable_bo;
 int ret;

 for (i = 0; i < batch->num_otables; ++i)
  if (batch->otables[i].enabled)
   vmw_takedown_otable_base(dev_priv, i,
       &batch->otables[i]);

 ret = ttm_bo_reserve(bo, 0, 1, ((void*)0));
 BUG_ON(ret != 0);

 vmw_bo_fence_single(bo, ((void*)0));
 ttm_bo_unreserve(bo);

 ttm_bo_put(batch->otable_bo);
 batch->otable_bo = ((void*)0);
}
