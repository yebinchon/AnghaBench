
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int bdev; scalar_t__ has_mob; scalar_t__ cman; int dummy_query_bo; int * pinned_bo; } ;


 int BUG_ON (int ) ;
 int VMW_PL_MOB ;
 int ttm_bo_evict_mm (int *,int ) ;
 int vmw_bo_unreference (int *) ;
 int vmw_cmdbuf_remove_pool (scalar_t__) ;
 int vmw_otables_takedown (struct vmw_private*) ;

__attribute__((used)) static void vmw_release_device_early(struct vmw_private *dev_priv)
{





 BUG_ON(dev_priv->pinned_bo != ((void*)0));

 vmw_bo_unreference(&dev_priv->dummy_query_bo);
 if (dev_priv->cman)
  vmw_cmdbuf_remove_pool(dev_priv->cman);

 if (dev_priv->has_mob) {
  ttm_bo_evict_mm(&dev_priv->bdev, VMW_PL_MOB);
  vmw_otables_takedown(dev_priv);
 }
}
