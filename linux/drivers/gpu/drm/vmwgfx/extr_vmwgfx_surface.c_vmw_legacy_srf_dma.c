
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmw_surface {int dummy; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct ttm_validate_buffer {int bo; } ;
typedef int SVGAGuestPtr ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int * VMW_FIFO_RESERVE (struct vmw_private*,int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_fence_single (int ,struct vmw_fence_obj*) ;
 int vmw_bo_get_guest_ptr (int ,int *) ;
 int vmw_execbuf_fence_commands (int *,struct vmw_private*,struct vmw_fence_obj**,int *) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 int vmw_fifo_commit (struct vmw_private*,int ) ;
 struct vmw_surface* vmw_res_to_srf (struct vmw_resource*) ;
 int vmw_surface_dma_encode (struct vmw_surface*,int *,int *,int) ;
 int vmw_surface_dma_size (struct vmw_surface*) ;

__attribute__((used)) static int vmw_legacy_srf_dma(struct vmw_resource *res,
         struct ttm_validate_buffer *val_buf,
         bool bind)
{
 SVGAGuestPtr ptr;
 struct vmw_fence_obj *fence;
 uint32_t submit_size;
 struct vmw_surface *srf = vmw_res_to_srf(res);
 uint8_t *cmd;
 struct vmw_private *dev_priv = res->dev_priv;

 BUG_ON(!val_buf->bo);
 submit_size = vmw_surface_dma_size(srf);
 cmd = VMW_FIFO_RESERVE(dev_priv, submit_size);
 if (unlikely(!cmd))
  return -ENOMEM;

 vmw_bo_get_guest_ptr(val_buf->bo, &ptr);
 vmw_surface_dma_encode(srf, cmd, &ptr, bind);

 vmw_fifo_commit(dev_priv, submit_size);





 (void) vmw_execbuf_fence_commands(((void*)0), dev_priv,
       &fence, ((void*)0));

 vmw_bo_fence_single(val_buf->bo, fence);

 if (likely(fence != ((void*)0)))
  vmw_fence_obj_unreference(&fence);

 return 0;
}
