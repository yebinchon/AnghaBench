
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmw_resource {TYPE_3__* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
struct vmw_fence_obj {int dummy; } ;
struct ttm_validate_buffer {int bo; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_5__ {TYPE_1__ mem; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 int BUG_ON (int) ;
 scalar_t__ VMW_PL_MOB ;
 scalar_t__ likely (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_bo_fence_single (int ,struct vmw_fence_obj*) ;
 int vmw_dx_shader_scrub (struct vmw_resource*) ;
 int vmw_execbuf_fence_commands (int *,struct vmw_private*,struct vmw_fence_obj**,int *) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;

__attribute__((used)) static int vmw_dx_shader_unbind(struct vmw_resource *res,
    bool readback,
    struct ttm_validate_buffer *val_buf)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_fence_obj *fence;
 int ret;

 BUG_ON(res->backup->base.mem.mem_type != VMW_PL_MOB);

 mutex_lock(&dev_priv->binding_mutex);
 ret = vmw_dx_shader_scrub(res);
 mutex_unlock(&dev_priv->binding_mutex);

 if (ret)
  return ret;

 (void) vmw_execbuf_fence_commands(((void*)0), dev_priv,
       &fence, ((void*)0));
 vmw_bo_fence_single(val_buf->bo, fence);

 if (likely(fence != ((void*)0)))
  vmw_fence_obj_unreference(&fence);

 return 0;
}
