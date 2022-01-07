
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gem_vma {int iova; } ;
struct msm_gem_object {int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int WARN_ON (int) ;
 struct msm_gem_vma* lookup_vma (struct drm_gem_object*,struct msm_gem_address_space*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

uint64_t msm_gem_iova(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_gem_vma *vma;

 mutex_lock(&msm_obj->lock);
 vma = lookup_vma(obj, aspace);
 mutex_unlock(&msm_obj->lock);
 WARN_ON(!vma);

 return vma ? vma->iova : 0;
}
