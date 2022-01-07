
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gem_object {int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int msm_gem_get_iova_locked (struct drm_gem_object*,struct msm_gem_address_space*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

int msm_gem_get_iova(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace, uint64_t *iova)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 int ret;

 mutex_lock(&msm_obj->lock);
 ret = msm_gem_get_iova_locked(obj, aspace, iova);
 mutex_unlock(&msm_obj->lock);

 return ret;
}
