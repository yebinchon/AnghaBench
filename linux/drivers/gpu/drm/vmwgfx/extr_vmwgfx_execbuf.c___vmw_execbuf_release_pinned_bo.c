
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int query_cid_valid; int dummy_query_bo_pinned; int * pinned_bo; int * dummy_query_bo; int query_cid; } ;
struct vmw_fence_obj {int dummy; } ;


 int BUG_ON (int ) ;
 int DECLARE_VAL_CONTEXT (int ,int *,int ) ;
 int val_ctx ;
 int vmw_bo_pin_reserved (int *,int) ;
 int vmw_bo_unreference (int **) ;
 int vmw_execbuf_fence_commands (int *,struct vmw_private*,struct vmw_fence_obj**,int *) ;
 int vmw_execbuf_unpin_panic (struct vmw_private*) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 int vmw_fifo_emit_dummy_query (struct vmw_private*,int ) ;
 int vmw_validation_add_bo (int *,int *,int,int) ;
 int vmw_validation_bo_backoff (int *) ;
 int vmw_validation_bo_fence (int *,struct vmw_fence_obj*) ;
 int vmw_validation_bo_reserve (int *,int) ;
 int vmw_validation_unref_lists (int *) ;

void __vmw_execbuf_release_pinned_bo(struct vmw_private *dev_priv,
         struct vmw_fence_obj *fence)
{
 int ret = 0;
 struct vmw_fence_obj *lfence = ((void*)0);
 DECLARE_VAL_CONTEXT(val_ctx, ((void*)0), 0);

 if (dev_priv->pinned_bo == ((void*)0))
  goto out_unlock;

 ret = vmw_validation_add_bo(&val_ctx, dev_priv->pinned_bo, 0,
        0);
 if (ret)
  goto out_no_reserve;

 ret = vmw_validation_add_bo(&val_ctx, dev_priv->dummy_query_bo, 0,
        0);
 if (ret)
  goto out_no_reserve;

 ret = vmw_validation_bo_reserve(&val_ctx, 0);
 if (ret)
  goto out_no_reserve;

 if (dev_priv->query_cid_valid) {
  BUG_ON(fence != ((void*)0));
  ret = vmw_fifo_emit_dummy_query(dev_priv, dev_priv->query_cid);
  if (ret)
   goto out_no_emit;
  dev_priv->query_cid_valid = 0;
 }

 vmw_bo_pin_reserved(dev_priv->pinned_bo, 0);
 if (dev_priv->dummy_query_bo_pinned) {
  vmw_bo_pin_reserved(dev_priv->dummy_query_bo, 0);
  dev_priv->dummy_query_bo_pinned = 0;
 }
 if (fence == ((void*)0)) {
  (void) vmw_execbuf_fence_commands(((void*)0), dev_priv, &lfence,
        ((void*)0));
  fence = lfence;
 }
 vmw_validation_bo_fence(&val_ctx, fence);
 if (lfence != ((void*)0))
  vmw_fence_obj_unreference(&lfence);

 vmw_validation_unref_lists(&val_ctx);
 vmw_bo_unreference(&dev_priv->pinned_bo);

out_unlock:
 return;
out_no_emit:
 vmw_validation_bo_backoff(&val_ctx);
out_no_reserve:
 vmw_validation_unref_lists(&val_ctx);
 vmw_execbuf_unpin_panic(dev_priv);
 vmw_bo_unreference(&dev_priv->pinned_bo);
}
