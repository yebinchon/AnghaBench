
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int vmap_count; int lock; } ;
struct drm_gem_object {int dummy; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_put_vaddr(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 mutex_lock(&msm_obj->lock);
 WARN_ON(msm_obj->vmap_count < 1);
 msm_obj->vmap_count--;
 mutex_unlock(&msm_obj->lock);
}
