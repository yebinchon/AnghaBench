
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int * vaddr; int lock; } ;
struct drm_gem_object {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int is_vunmapable (struct msm_gem_object*) ;
 int mutex_is_locked (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 int vunmap (int *) ;

__attribute__((used)) static void msm_gem_vunmap_locked(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 WARN_ON(!mutex_is_locked(&msm_obj->lock));

 if (!msm_obj->vaddr || WARN_ON(!is_vunmapable(msm_obj)))
  return;

 vunmap(msm_obj->vaddr);
 msm_obj->vaddr = ((void*)0);
}
