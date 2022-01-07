
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
struct tegra_bo {int paddr; scalar_t__ vaddr; TYPE_3__ gem; TYPE_1__* sgt; scalar_t__ pages; } ;
struct drm_device {int dev; } ;
struct TYPE_4__ {int nents; int sgl; } ;


 int DMA_FROM_DEVICE ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int drm_gem_put_pages (TYPE_3__*,scalar_t__,int,int) ;
 int kfree (TYPE_1__*) ;
 int sg_free_table (TYPE_1__*) ;

__attribute__((used)) static void tegra_bo_free(struct drm_device *drm, struct tegra_bo *bo)
{
 if (bo->pages) {
  dma_unmap_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
        DMA_FROM_DEVICE);
  drm_gem_put_pages(&bo->gem, bo->pages, 1, 1);
  sg_free_table(bo->sgt);
  kfree(bo->sgt);
 } else if (bo->vaddr) {
  dma_free_wc(drm->dev, bo->gem.size, bo->vaddr, bo->paddr);
 }
}
