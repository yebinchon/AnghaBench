
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int fman; } ;
struct vmw_fence_obj {int dummy; } ;
struct drm_file {int dummy; } ;


 int BUG_ON (int) ;
 int VMW_DEBUG_USER (char*) ;
 int VMW_FENCE_WAIT_TIMEOUT ;
 scalar_t__ unlikely (int) ;
 int vmw_fallback_wait (struct vmw_private*,int,int,int ,int,int ) ;
 int vmw_fence_create (int ,int ,struct vmw_fence_obj**) ;
 int vmw_fifo_send_fence (struct vmw_private*,int *) ;
 int vmw_user_fence_create (struct drm_file*,int ,int ,struct vmw_fence_obj**,int *) ;

int vmw_execbuf_fence_commands(struct drm_file *file_priv,
          struct vmw_private *dev_priv,
          struct vmw_fence_obj **p_fence,
          uint32_t *p_handle)
{
 uint32_t sequence;
 int ret;
 bool synced = 0;


 BUG_ON(p_handle != ((void*)0) && file_priv == ((void*)0));

 ret = vmw_fifo_send_fence(dev_priv, &sequence);
 if (unlikely(ret != 0)) {
  VMW_DEBUG_USER("Fence submission error. Syncing.\n");
  synced = 1;
 }

 if (p_handle != ((void*)0))
  ret = vmw_user_fence_create(file_priv, dev_priv->fman,
         sequence, p_fence, p_handle);
 else
  ret = vmw_fence_create(dev_priv->fman, sequence, p_fence);

 if (unlikely(ret != 0 && !synced)) {
  (void) vmw_fallback_wait(dev_priv, 0, 0, sequence,
      0, VMW_FENCE_WAIT_TIMEOUT);
  *p_fence = ((void*)0);
 }

 return ret;
}
