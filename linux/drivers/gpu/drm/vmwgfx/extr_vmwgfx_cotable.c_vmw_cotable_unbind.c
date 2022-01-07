
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
struct vmw_fence_obj {int dummy; } ;
struct vmw_cotable {int ctx; int scrubbed; } ;
struct ttm_validate_buffer {struct ttm_buffer_object* bo; } ;
struct TYPE_4__ {int resv; } ;
struct TYPE_3__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_2__ base; TYPE_1__ mem; } ;


 scalar_t__ VMW_PL_MOB ;
 int WARN_ON_ONCE (int) ;
 int dma_resv_assert_held (int ) ;
 scalar_t__ likely (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_bo_fence_single (struct ttm_buffer_object*,struct vmw_fence_obj*) ;
 struct vmw_cotable* vmw_cotable (struct vmw_resource*) ;
 int vmw_dx_context_scrub_cotables (int ,int) ;
 int vmw_execbuf_fence_commands (int *,struct vmw_private*,struct vmw_fence_obj**,int *) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 int vmw_resource_mob_attached (struct vmw_resource*) ;

__attribute__((used)) static int vmw_cotable_unbind(struct vmw_resource *res,
         bool readback,
         struct ttm_validate_buffer *val_buf)
{
 struct vmw_cotable *vcotbl = vmw_cotable(res);
 struct vmw_private *dev_priv = res->dev_priv;
 struct ttm_buffer_object *bo = val_buf->bo;
 struct vmw_fence_obj *fence;

 if (!vmw_resource_mob_attached(res))
  return 0;

 WARN_ON_ONCE(bo->mem.mem_type != VMW_PL_MOB);
 dma_resv_assert_held(bo->base.resv);

 mutex_lock(&dev_priv->binding_mutex);
 if (!vcotbl->scrubbed)
  vmw_dx_context_scrub_cotables(vcotbl->ctx, readback);
 mutex_unlock(&dev_priv->binding_mutex);
 (void) vmw_execbuf_fence_commands(((void*)0), dev_priv, &fence, ((void*)0));
 vmw_bo_fence_single(bo, fence);
 if (likely(fence != ((void*)0)))
  vmw_fence_obj_unreference(&fence);

 return 0;
}
