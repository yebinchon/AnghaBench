
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_vma {int dummy; } ;
struct msm_gem_object {int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int WARN_ON (int) ;
 struct msm_gem_vma* lookup_vma (struct drm_gem_object*,struct msm_gem_address_space*) ;
 int msm_gem_unmap_vma (struct msm_gem_address_space*,struct msm_gem_vma*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_unpin_iova(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_gem_vma *vma;

 mutex_lock(&msm_obj->lock);
 vma = lookup_vma(obj, aspace);

 if (!WARN_ON(!vma))
  msm_gem_unmap_vma(aspace, vma);

 mutex_unlock(&msm_obj->lock);
}
