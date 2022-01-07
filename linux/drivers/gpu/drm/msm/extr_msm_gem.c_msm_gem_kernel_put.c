
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct drm_gem_object*) ;
 int drm_gem_object_put (struct drm_gem_object*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int msm_gem_put_vaddr (struct drm_gem_object*) ;
 int msm_gem_unpin_iova (struct drm_gem_object*,struct msm_gem_address_space*) ;

void msm_gem_kernel_put(struct drm_gem_object *bo,
  struct msm_gem_address_space *aspace, bool locked)
{
 if (IS_ERR_OR_NULL(bo))
  return;

 msm_gem_put_vaddr(bo);
 msm_gem_unpin_iova(bo, aspace);

 if (locked)
  drm_gem_object_put(bo);
 else
  drm_gem_object_put_unlocked(bo);
}
