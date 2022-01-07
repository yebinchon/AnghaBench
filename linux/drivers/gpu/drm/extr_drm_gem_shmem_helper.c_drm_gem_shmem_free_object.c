
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_shmem_object {int vmap_lock; int pages_lock; int pages_use_count; scalar_t__ pages; struct drm_gem_shmem_object* sgt; int nents; int sgl; int vmap_use_count; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int WARN_ON (int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_gem_shmem_put_pages (struct drm_gem_shmem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,struct drm_gem_shmem_object*) ;
 int kfree (struct drm_gem_shmem_object*) ;
 int kvfree (scalar_t__) ;
 int mutex_destroy (int *) ;
 int sg_free_table (struct drm_gem_shmem_object*) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

void drm_gem_shmem_free_object(struct drm_gem_object *obj)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 WARN_ON(shmem->vmap_use_count);

 if (obj->import_attach) {
  shmem->pages_use_count--;
  drm_prime_gem_destroy(obj, shmem->sgt);
  kvfree(shmem->pages);
 } else {
  if (shmem->sgt) {
   dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
         shmem->sgt->nents, DMA_BIDIRECTIONAL);
   sg_free_table(shmem->sgt);
   kfree(shmem->sgt);
  }
  if (shmem->pages)
   drm_gem_shmem_put_pages(shmem);
 }

 WARN_ON(shmem->pages_use_count);

 drm_gem_object_release(obj);
 mutex_destroy(&shmem->pages_lock);
 mutex_destroy(&shmem->vmap_lock);
 kfree(shmem);
}
