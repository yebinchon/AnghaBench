
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bo {scalar_t__ pages; } ;
struct sg_table {int nents; int sgl; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct drm_gem_object* priv; } ;


 int dma_unmap_sg (int ,int ,int ,int) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;

__attribute__((used)) static void tegra_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
       struct sg_table *sgt,
       enum dma_data_direction dir)
{
 struct drm_gem_object *gem = attach->dmabuf->priv;
 struct tegra_bo *bo = to_tegra_bo(gem);

 if (bo->pages)
  dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);

 sg_free_table(sgt);
 kfree(sgt);
}
