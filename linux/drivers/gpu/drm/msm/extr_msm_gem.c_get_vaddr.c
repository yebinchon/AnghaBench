
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct msm_gem_object {unsigned int madv; void* vaddr; int lock; int vmap_count; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,unsigned int,unsigned int) ;
 int EBUSY ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct page**) ;
 int VM_MAP ;
 scalar_t__ WARN_ON (int) ;
 struct page** get_pages (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pgprot_writecombine (int ) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 void* vmap (struct page**,int,int ,int ) ;

__attribute__((used)) static void *get_vaddr(struct drm_gem_object *obj, unsigned madv)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 int ret = 0;

 mutex_lock(&msm_obj->lock);

 if (WARN_ON(msm_obj->madv > madv)) {
  DRM_DEV_ERROR(obj->dev->dev, "Invalid madv state: %u vs %u\n",
   msm_obj->madv, madv);
  mutex_unlock(&msm_obj->lock);
  return ERR_PTR(-EBUSY);
 }







 msm_obj->vmap_count++;

 if (!msm_obj->vaddr) {
  struct page **pages = get_pages(obj);
  if (IS_ERR(pages)) {
   ret = PTR_ERR(pages);
   goto fail;
  }
  msm_obj->vaddr = vmap(pages, obj->size >> PAGE_SHIFT,
    VM_MAP, pgprot_writecombine(PAGE_KERNEL));
  if (msm_obj->vaddr == ((void*)0)) {
   ret = -ENOMEM;
   goto fail;
  }
 }

 mutex_unlock(&msm_obj->lock);
 return msm_obj->vaddr;

fail:
 msm_obj->vmap_count--;
 mutex_unlock(&msm_obj->lock);
 return ERR_PTR(ret);
}
