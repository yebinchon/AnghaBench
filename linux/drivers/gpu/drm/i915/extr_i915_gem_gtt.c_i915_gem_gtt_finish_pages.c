
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct i915_ggtt {int do_idle_maps; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct drm_i915_private {struct i915_ggtt ggtt; TYPE_3__ drm; } ;
struct TYPE_4__ {int dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int DRM_ERROR (char*) ;
 int MAX_SCHEDULE_TIMEOUT ;
 int PCI_DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (struct device*,int ,int ,int ) ;
 scalar_t__ i915_gem_wait_for_idle (struct drm_i915_private*,int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int udelay (int) ;
 scalar_t__ unlikely (int ) ;

void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
          struct sg_table *pages)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 struct device *kdev = &dev_priv->drm.pdev->dev;
 struct i915_ggtt *ggtt = &dev_priv->ggtt;

 if (unlikely(ggtt->do_idle_maps)) {
  if (i915_gem_wait_for_idle(dev_priv, 0, MAX_SCHEDULE_TIMEOUT)) {
   DRM_ERROR("Failed to wait for idle; VT'd may hang.\n");

   udelay(10);
  }
 }

 dma_unmap_sg(kdev, pages->sgl, pages->nents, PCI_DMA_BIDIRECTIONAL);
}
