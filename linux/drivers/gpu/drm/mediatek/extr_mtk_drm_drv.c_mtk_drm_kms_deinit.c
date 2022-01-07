
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_drm_private {TYPE_1__* dma_dev; scalar_t__ dma_parms_allocated; } ;
struct drm_device {int dev; struct mtk_drm_private* dev_private; } ;
struct TYPE_2__ {int * dma_parms; } ;


 int component_unbind_all (int ,struct drm_device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;

__attribute__((used)) static void mtk_drm_kms_deinit(struct drm_device *drm)
{
 struct mtk_drm_private *private = drm->dev_private;

 drm_kms_helper_poll_fini(drm);
 drm_atomic_helper_shutdown(drm);

 if (private->dma_parms_allocated)
  private->dma_dev->dma_parms = ((void*)0);

 component_unbind_all(drm->dev, drm);
 drm_mode_config_cleanup(drm);
}
