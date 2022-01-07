
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct drm_gem_shmem_object {struct sg_table* sgt; int base; } ;
struct drm_gem_object {TYPE_1__* dev; int import_attach; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 struct sg_table* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 int WARN_ON (int ) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int drm_gem_shmem_get_pages (struct drm_gem_shmem_object*) ;
 struct sg_table* drm_gem_shmem_get_sg_table (int *) ;
 int drm_gem_shmem_put_pages (struct drm_gem_shmem_object*) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_object *obj)
{
 int ret;
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
 struct sg_table *sgt;

 if (shmem->sgt)
  return shmem->sgt;

 WARN_ON(obj->import_attach);

 ret = drm_gem_shmem_get_pages(shmem);
 if (ret)
  return ERR_PTR(ret);

 sgt = drm_gem_shmem_get_sg_table(&shmem->base);
 if (IS_ERR(sgt)) {
  ret = PTR_ERR(sgt);
  goto err_put_pages;
 }

 dma_map_sg(obj->dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);

 shmem->sgt = sgt;

 return sgt;

err_put_pages:
 drm_gem_shmem_put_pages(shmem);
 return ERR_PTR(ret);
}
