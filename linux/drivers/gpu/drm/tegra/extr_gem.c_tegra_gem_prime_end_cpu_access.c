
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bo {TYPE_1__* sgt; scalar_t__ pages; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int nents; int sgl; } ;


 int DMA_TO_DEVICE ;
 int dma_sync_sg_for_device (int ,int ,int ,int ) ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;

__attribute__((used)) static int tegra_gem_prime_end_cpu_access(struct dma_buf *buf,
       enum dma_data_direction direction)
{
 struct drm_gem_object *gem = buf->priv;
 struct tegra_bo *bo = to_tegra_bo(gem);
 struct drm_device *drm = gem->dev;

 if (bo->pages)
  dma_sync_sg_for_device(drm->dev, bo->sgt->sgl, bo->sgt->nents,
           DMA_TO_DEVICE);

 return 0;
}
