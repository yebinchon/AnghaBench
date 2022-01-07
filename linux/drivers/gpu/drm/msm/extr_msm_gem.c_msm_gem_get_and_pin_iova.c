
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
struct msm_gem_object {int lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int msm_gem_get_iova_locked (struct drm_gem_object*,struct msm_gem_address_space*,int *) ;
 int msm_gem_pin_iova (struct drm_gem_object*,struct msm_gem_address_space*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

int msm_gem_get_and_pin_iova(struct drm_gem_object *obj,
  struct msm_gem_address_space *aspace, uint64_t *iova)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 u64 local;
 int ret;

 mutex_lock(&msm_obj->lock);

 ret = msm_gem_get_iova_locked(obj, aspace, &local);

 if (!ret)
  ret = msm_gem_pin_iova(obj, aspace);

 if (!ret)
  *iova = local;

 mutex_unlock(&msm_obj->lock);
 return ret;
}
