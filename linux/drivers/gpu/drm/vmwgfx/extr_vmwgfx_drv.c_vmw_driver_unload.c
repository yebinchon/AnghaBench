
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ staged_bindings; int cmd_bounce; int res_ht; scalar_t__ res_ht_initialized; } ;
struct vmw_private {int capabilities; int * res_idr; TYPE_1__ ctx; int mmio_virt; int tdev; scalar_t__ stealth; int dev; int fman; int bdev; scalar_t__ has_mob; scalar_t__ has_gmr; scalar_t__ enable_fb; int pm_nb; } ;
struct drm_device {int pdev; } ;
typedef enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;


 int SVGA_CAP_IRQMASK ;
 int TTM_PL_VRAM ;
 int VMW_PL_GMR ;
 int VMW_PL_MOB ;
 int drm_ht_remove (int *) ;
 int idr_destroy (int *) ;
 int kfree (struct vmw_private*) ;
 int memunmap (int ) ;
 int pci_release_region (int ,int) ;
 int pci_release_regions (int ) ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;
 int ttm_object_device_release (int *) ;
 int unregister_pm_notifier (int *) ;
 int vfree (int ) ;
 int vmw_binding_state_free (scalar_t__) ;
 int vmw_fb_close (struct vmw_private*) ;
 int vmw_fb_off (struct vmw_private*) ;
 int vmw_fence_manager_takedown (int ) ;
 int vmw_fifo_resource_dec (struct vmw_private*) ;
 int vmw_irq_uninstall (int ) ;
 int vmw_kms_close (struct vmw_private*) ;
 int vmw_overlay_close (struct vmw_private*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_release_device_early (struct vmw_private*) ;
 int vmw_release_device_late (struct vmw_private*) ;
 int vmw_res_context ;
 int vmw_res_max ;
 int vmw_svga_disable (struct vmw_private*) ;

__attribute__((used)) static void vmw_driver_unload(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 enum vmw_res_type i;

 unregister_pm_notifier(&dev_priv->pm_nb);

 if (dev_priv->ctx.res_ht_initialized)
  drm_ht_remove(&dev_priv->ctx.res_ht);
 vfree(dev_priv->ctx.cmd_bounce);
 if (dev_priv->enable_fb) {
  vmw_fb_off(dev_priv);
  vmw_fb_close(dev_priv);
  vmw_fifo_resource_dec(dev_priv);
  vmw_svga_disable(dev_priv);
 }

 vmw_kms_close(dev_priv);
 vmw_overlay_close(dev_priv);

 if (dev_priv->has_gmr)
  (void)ttm_bo_clean_mm(&dev_priv->bdev, VMW_PL_GMR);
 (void)ttm_bo_clean_mm(&dev_priv->bdev, TTM_PL_VRAM);

 vmw_release_device_early(dev_priv);
 if (dev_priv->has_mob)
  (void) ttm_bo_clean_mm(&dev_priv->bdev, VMW_PL_MOB);
 (void) ttm_bo_device_release(&dev_priv->bdev);
 vmw_release_device_late(dev_priv);
 vmw_fence_manager_takedown(dev_priv->fman);
 if (dev_priv->capabilities & SVGA_CAP_IRQMASK)
  vmw_irq_uninstall(dev_priv->dev);
 if (dev_priv->stealth)
  pci_release_region(dev->pdev, 2);
 else
  pci_release_regions(dev->pdev);

 ttm_object_device_release(&dev_priv->tdev);
 memunmap(dev_priv->mmio_virt);
 if (dev_priv->ctx.staged_bindings)
  vmw_binding_state_free(dev_priv->ctx.staged_bindings);

 for (i = vmw_res_context; i < vmw_res_max; ++i)
  idr_destroy(&dev_priv->res_idr[i]);

 kfree(dev_priv);
}
