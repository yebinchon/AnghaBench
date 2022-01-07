
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct etnaviv_gem_object {int flags; struct sg_table* sgt; TYPE_1__ base; } ;
struct drm_device {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int ETNA_BO_CACHE_MASK ;
 int dma_map_sg (int ,int ,int ,int ) ;

__attribute__((used)) static void etnaviv_gem_scatter_map(struct etnaviv_gem_object *etnaviv_obj)
{
 struct drm_device *dev = etnaviv_obj->base.dev;
 struct sg_table *sgt = etnaviv_obj->sgt;





 if (etnaviv_obj->flags & ETNA_BO_CACHE_MASK)
  dma_map_sg(dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
}
