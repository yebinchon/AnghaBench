
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct exynos_drm_gem {int pages; int dma_attrs; scalar_t__ dma_addr; int cookie; int size; TYPE_1__ base; } ;
struct drm_device {int dev; } ;
typedef int dma_addr_t ;


 int DRM_DEV_DEBUG_KMS (int ,char*,...) ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int kvfree (int ) ;
 int to_dma_dev (struct drm_device*) ;

__attribute__((used)) static void exynos_drm_free_buf(struct exynos_drm_gem *exynos_gem)
{
 struct drm_device *dev = exynos_gem->base.dev;

 if (!exynos_gem->dma_addr) {
  DRM_DEV_DEBUG_KMS(dev->dev, "dma_addr is invalid.\n");
  return;
 }

 DRM_DEV_DEBUG_KMS(dev->dev, "dma_addr(0x%lx), size(0x%lx)\n",
   (unsigned long)exynos_gem->dma_addr, exynos_gem->size);

 dma_free_attrs(to_dma_dev(dev), exynos_gem->size, exynos_gem->cookie,
   (dma_addr_t)exynos_gem->dma_addr,
   exynos_gem->dma_attrs);

 kvfree(exynos_gem->pages);
}
