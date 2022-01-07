
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_drm {scalar_t__ domain; } ;
struct tegra_bo {int sgt; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {struct tegra_drm* dev_private; } ;


 int DMA_TO_DEVICE ;
 int dma_buf_unmap_attachment (scalar_t__,int ,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int *) ;
 int kfree (struct tegra_bo*) ;
 int tegra_bo_free (TYPE_1__*,struct tegra_bo*) ;
 int tegra_bo_iommu_unmap (struct tegra_drm*,struct tegra_bo*) ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;

void tegra_bo_free_object(struct drm_gem_object *gem)
{
 struct tegra_drm *tegra = gem->dev->dev_private;
 struct tegra_bo *bo = to_tegra_bo(gem);

 if (tegra->domain)
  tegra_bo_iommu_unmap(tegra, bo);

 if (gem->import_attach) {
  dma_buf_unmap_attachment(gem->import_attach, bo->sgt,
      DMA_TO_DEVICE);
  drm_prime_gem_destroy(gem, ((void*)0));
 } else {
  tegra_bo_free(gem->dev, bo);
 }

 drm_gem_object_release(gem);
 kfree(bo);
}
