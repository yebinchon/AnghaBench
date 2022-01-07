
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vc4_dev {int bo_lock; TYPE_3__* dev; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ base; int vaddr; } ;
struct vc4_bo {int madv; TYPE_2__ base; } ;
struct drm_printer {int dummy; } ;
struct drm_gem_cma_object {int base; } ;
struct drm_device {int dummy; } ;
typedef enum vc4_kernel_bo_type { ____Placeholder_vc4_kernel_bo_type } vc4_kernel_bo_type ;
struct TYPE_6__ {int dev; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 struct vc4_bo* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct drm_gem_cma_object*) ;
 int PAGE_SIZE ;
 int __VC4_MADV_NOTSUPP ;
 struct drm_gem_cma_object* drm_gem_cma_create (struct drm_device*,size_t) ;
 struct drm_printer drm_info_printer (int ) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t roundup (size_t,int ) ;
 struct vc4_bo* to_vc4_bo (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_bo_cache_purge (struct drm_device*) ;
 struct vc4_bo* vc4_bo_get_from_cache (struct drm_device*,size_t,int) ;
 int vc4_bo_set_label (int *,int) ;
 int vc4_bo_stats_print (struct drm_printer*,struct vc4_dev*) ;
 int vc4_bo_userspace_cache_purge (struct drm_device*) ;

struct vc4_bo *vc4_bo_create(struct drm_device *dev, size_t unaligned_size,
        bool allow_unzeroed, enum vc4_kernel_bo_type type)
{
 size_t size = roundup(unaligned_size, PAGE_SIZE);
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_gem_cma_object *cma_obj;
 struct vc4_bo *bo;

 if (size == 0)
  return ERR_PTR(-EINVAL);


 bo = vc4_bo_get_from_cache(dev, size, type);
 if (bo) {
  if (!allow_unzeroed)
   memset(bo->base.vaddr, 0, bo->base.base.size);
  return bo;
 }

 cma_obj = drm_gem_cma_create(dev, size);
 if (IS_ERR(cma_obj)) {




  vc4_bo_cache_purge(dev);
  cma_obj = drm_gem_cma_create(dev, size);
 }

 if (IS_ERR(cma_obj)) {
  vc4_bo_userspace_cache_purge(dev);
  cma_obj = drm_gem_cma_create(dev, size);
 }

 if (IS_ERR(cma_obj)) {
  struct drm_printer p = drm_info_printer(vc4->dev->dev);
  DRM_ERROR("Failed to allocate from CMA:\n");
  vc4_bo_stats_print(&p, vc4);
  return ERR_PTR(-ENOMEM);
 }
 bo = to_vc4_bo(&cma_obj->base);





 bo->madv = __VC4_MADV_NOTSUPP;

 mutex_lock(&vc4->bo_lock);
 vc4_bo_set_label(&cma_obj->base, type);
 mutex_unlock(&vc4->bo_lock);

 return bo;
}
