
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct msm_gem_object {int lock; int pages; struct sg_table* sgt; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dev; } ;
struct dma_buf {int size; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MSM_BO_WC ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SIZE ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,int) ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,int ,int *,int) ;
 int kvmalloc_array (int,int,int ) ;
 int msm_gem_new_impl (struct drm_device*,int,int ,struct drm_gem_object**,int) ;
 int msm_use_mmu (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

struct drm_gem_object *msm_gem_import(struct drm_device *dev,
  struct dma_buf *dmabuf, struct sg_table *sgt)
{
 struct msm_gem_object *msm_obj;
 struct drm_gem_object *obj;
 uint32_t size;
 int ret, npages;


 if (!msm_use_mmu(dev)) {
  DRM_DEV_ERROR(dev->dev, "cannot import without IOMMU\n");
  return ERR_PTR(-EINVAL);
 }

 size = PAGE_ALIGN(dmabuf->size);

 ret = msm_gem_new_impl(dev, size, MSM_BO_WC, &obj, 0);
 if (ret)
  goto fail;

 drm_gem_private_object_init(dev, obj, size);

 npages = size / PAGE_SIZE;

 msm_obj = to_msm_bo(obj);
 mutex_lock(&msm_obj->lock);
 msm_obj->sgt = sgt;
 msm_obj->pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (!msm_obj->pages) {
  mutex_unlock(&msm_obj->lock);
  ret = -ENOMEM;
  goto fail;
 }

 ret = drm_prime_sg_to_page_addr_arrays(sgt, msm_obj->pages, ((void*)0), npages);
 if (ret) {
  mutex_unlock(&msm_obj->lock);
  goto fail;
 }

 mutex_unlock(&msm_obj->lock);
 return obj;

fail:
 drm_gem_object_put_unlocked(obj);
 return ERR_PTR(ret);
}
