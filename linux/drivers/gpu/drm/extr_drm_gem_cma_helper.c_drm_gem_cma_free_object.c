
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_gem_object {TYPE_1__* dev; TYPE_3__* import_attach; } ;
struct TYPE_5__ {int size; } ;
struct drm_gem_cma_object {int paddr; scalar_t__ vaddr; TYPE_2__ base; int sgt; } ;
struct TYPE_6__ {int dmabuf; } ;
struct TYPE_4__ {int dev; } ;


 int dma_buf_vunmap (int ,scalar_t__) ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int kfree (struct drm_gem_cma_object*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

void drm_gem_cma_free_object(struct drm_gem_object *gem_obj)
{
 struct drm_gem_cma_object *cma_obj;

 cma_obj = to_drm_gem_cma_obj(gem_obj);

 if (gem_obj->import_attach) {
  if (cma_obj->vaddr)
   dma_buf_vunmap(gem_obj->import_attach->dmabuf, cma_obj->vaddr);
  drm_prime_gem_destroy(gem_obj, cma_obj->sgt);
 } else if (cma_obj->vaddr) {
  dma_free_wc(gem_obj->dev->dev, cma_obj->base.size,
       cma_obj->vaddr, cma_obj->paddr);
 }

 drm_gem_object_release(gem_obj);

 kfree(cma_obj);
}
