
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_cma_object {int base; int vaddr; int paddr; } ;
struct drm_device {int dev; } ;


 int ENOMEM ;
 struct drm_gem_cma_object* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_gem_cma_object*) ;
 int PAGE_SIZE ;
 int __GFP_NOWARN ;
 struct drm_gem_cma_object* __drm_gem_cma_create (struct drm_device*,size_t) ;
 int dev_dbg (int ,char*,size_t) ;
 int dma_alloc_wc (int ,size_t,int *,int) ;
 int drm_gem_object_put_unlocked (int *) ;
 size_t round_up (size_t,int ) ;

struct drm_gem_cma_object *drm_gem_cma_create(struct drm_device *drm,
           size_t size)
{
 struct drm_gem_cma_object *cma_obj;
 int ret;

 size = round_up(size, PAGE_SIZE);

 cma_obj = __drm_gem_cma_create(drm, size);
 if (IS_ERR(cma_obj))
  return cma_obj;

 cma_obj->vaddr = dma_alloc_wc(drm->dev, size, &cma_obj->paddr,
          GFP_KERNEL | __GFP_NOWARN);
 if (!cma_obj->vaddr) {
  dev_dbg(drm->dev, "failed to allocate buffer with size %zu\n",
   size);
  ret = -ENOMEM;
  goto error;
 }

 return cma_obj;

error:
 drm_gem_object_put_unlocked(&cma_obj->base);
 return ERR_PTR(ret);
}
