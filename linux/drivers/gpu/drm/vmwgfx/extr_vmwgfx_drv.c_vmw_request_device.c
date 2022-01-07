
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int has_dx; int fifo; int fman; int * cman; int bdev; scalar_t__ has_mob; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ IS_ERR (int *) ;
 int VMW_PL_MOB ;
 int ttm_bo_evict_mm (int *,int ) ;
 scalar_t__ unlikely (int) ;
 int * vmw_cmdbuf_man_create (struct vmw_private*) ;
 int vmw_cmdbuf_man_destroy (int *) ;
 int vmw_cmdbuf_remove_pool (int *) ;
 int vmw_dummy_query_bo_create (struct vmw_private*) ;
 int vmw_fence_fifo_down (int ) ;
 int vmw_fence_fifo_up (int ) ;
 int vmw_fifo_init (struct vmw_private*,int *) ;
 int vmw_fifo_release (struct vmw_private*,int *) ;
 int vmw_otables_takedown (struct vmw_private*) ;
 int vmw_request_device_late (struct vmw_private*) ;

__attribute__((used)) static int vmw_request_device(struct vmw_private *dev_priv)
{
 int ret;

 ret = vmw_fifo_init(dev_priv, &dev_priv->fifo);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Unable to initialize FIFO.\n");
  return ret;
 }
 vmw_fence_fifo_up(dev_priv->fman);
 dev_priv->cman = vmw_cmdbuf_man_create(dev_priv);
 if (IS_ERR(dev_priv->cman)) {
  dev_priv->cman = ((void*)0);
  dev_priv->has_dx = 0;
 }

 ret = vmw_request_device_late(dev_priv);
 if (ret)
  goto out_no_mob;

 ret = vmw_dummy_query_bo_create(dev_priv);
 if (unlikely(ret != 0))
  goto out_no_query_bo;

 return 0;

out_no_query_bo:
 if (dev_priv->cman)
  vmw_cmdbuf_remove_pool(dev_priv->cman);
 if (dev_priv->has_mob) {
  (void) ttm_bo_evict_mm(&dev_priv->bdev, VMW_PL_MOB);
  vmw_otables_takedown(dev_priv);
 }
 if (dev_priv->cman)
  vmw_cmdbuf_man_destroy(dev_priv->cman);
out_no_mob:
 vmw_fence_fifo_down(dev_priv->fman);
 vmw_fifo_release(dev_priv, &dev_priv->fifo);
 return ret;
}
