
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int lock; } ;
struct drm_gem_object {int dummy; } ;
typedef enum msm_gem_lock { ____Placeholder_msm_gem_lock } msm_gem_lock ;


 int msm_gem_vunmap_locked (struct drm_gem_object*) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_vunmap(struct drm_gem_object *obj, enum msm_gem_lock subclass)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 mutex_lock_nested(&msm_obj->lock, subclass);
 msm_gem_vunmap_locked(obj);
 mutex_unlock(&msm_obj->lock);
}
