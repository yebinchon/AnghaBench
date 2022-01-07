
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct drm_gem_object {TYPE_2__* dev; TYPE_4__* funcs; } ;
struct dma_buf_attachment {int dev; TYPE_3__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {struct sg_table* (* get_sg_table ) (struct drm_gem_object*) ;} ;
struct TYPE_7__ {struct drm_gem_object* priv; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {struct sg_table* (* gem_prime_get_sg_table ) (struct drm_gem_object*) ;} ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_NONE ;
 int EINVAL ;
 int ENOMEM ;
 struct sg_table* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int dma_map_sg_attrs (int ,int ,int ,int,int ) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;
 struct sg_table* stub1 (struct drm_gem_object*) ;
 struct sg_table* stub2 (struct drm_gem_object*) ;

struct sg_table *drm_gem_map_dma_buf(struct dma_buf_attachment *attach,
         enum dma_data_direction dir)
{
 struct drm_gem_object *obj = attach->dmabuf->priv;
 struct sg_table *sgt;

 if (WARN_ON(dir == DMA_NONE))
  return ERR_PTR(-EINVAL);

 if (obj->funcs)
  sgt = obj->funcs->get_sg_table(obj);
 else
  sgt = obj->dev->driver->gem_prime_get_sg_table(obj);

 if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
         DMA_ATTR_SKIP_CPU_SYNC)) {
  sg_free_table(sgt);
  kfree(sgt);
  sgt = ERR_PTR(-ENOMEM);
 }

 return sgt;
}
